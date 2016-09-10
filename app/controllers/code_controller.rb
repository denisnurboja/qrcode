class CodeController < ApplicationController
  def page
  	@sifra = params[:sifra]
  	@qr = RQRCode::QRCode.new( "smsto:+387832004:#{params[:sifra]}", :size => 4, :level => :h )

  end
  def new
  end
  def create
  	redirect_to showcode_path(params[:code][:sifra])
  end
  


private
def code_params
	require.params[:code].permit(:sifra)
end
end
