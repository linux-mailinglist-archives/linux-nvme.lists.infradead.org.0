Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335CD908FC
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 21:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3kcVhVxsX+r8REn5YwrjiFG9VkiqoK+y5lLYg3jBTk=; b=pGocirSChIj22G
	kZIq4px89PnjtcdMVIUJ7gCDPgL6y719YLLm9aDMspe4SadGQ6AIMJ7x8jY8OW3mDFEb8SYLVUfgb
	K+7iV/ZAKx4MPSSRh5sPwTxJCJoHYebswMyhxnqv3V92+XuEoMw2e9wRqdKuUZdHVNwyktLyaU6Br
	FE0dIAH4t7OBXa4Z0TnqI6eTzE5hFh5VSc3IvZK1D7SYcNGEij7XtO3RC6QI3C0OevcIQ8S24Z9as
	Rvq6NoZRjPc7hYkCp/2GDoVNZhmflpa3AIGoiaXgXycu2jHr+ud0p0U7iuVLUc/fI+JkNvvLrHEBQ
	cpGIy/LgfLM6YgfDUR0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyiHA-0003Eg-38; Fri, 16 Aug 2019 19:52:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyiH0-0003EL-Be
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 19:52:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id 207so4919599wma.1
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 12:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NFDNTV+DcBXCXR6V43G44/tvOJ5WKvqNFr4X8/n+eMA=;
 b=ljlDUQJDb/LaeKa/Pasm3ij3mBNJHxej/3LDw25w2WqBz+KxcfkE7Y0fSFvFerVCf1
 PMhHlyAg3pQqJLPqge6pYQItyykVsT7YfX9wcF6n3MhlX9HEhmrAEMAhCBqu/SnOpZj/
 reTGSHDn+rcABp8coZV+cHr14TTIYKxXrcDOatU2djytO1VNm28PeT8wzohgFf0eXEb5
 oYYNLrDINI27gcm7zZIFIr6OqFFbk5dDIKL5jmC/g1gwtONyMx4NWBNEhUJbM7EbiaIt
 YG1Gx9rCs3q0puMZRGxaChiNoGXOpSMXOO5U5TVyyqEFAGTcd8zbQ1G9tq26hEjLKL4J
 NX7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=NFDNTV+DcBXCXR6V43G44/tvOJ5WKvqNFr4X8/n+eMA=;
 b=V2UT6JjsuM71DUw4FH86SV9XBph0OgVd+39M6ambrZ+j3HKitYnqAXuJvIDGYBGhAg
 1txSZLNBW19OyZtkr69qojpULppADkApUxGiXYGzCIQ7ZktFk9FuFOCxOhON36CxWKCw
 YW+/WXqSroEVB4nimqO7fXi6QPHkiJANoTqKB+xA+gi2m8e4xFzYN+12oPzZ7ilUelRj
 wPPv38ypOLc3Dd7iZ9W4SRNaQyRAFHDqL+zA5F/F0PLY++KHjFllftRoeMl0/Jz6MOtw
 Gl2UiheD1OJog01B58ak4gdLgvHNBZdpaDA8ZJ0cE+7YCrgxZDsW0P5Lhe7pCp3yFtHE
 2YFQ==
X-Gm-Message-State: APjAAAVxH/qCj594WReuINVlXO9IizgYh0Y9Omh+MGX9PNvVJGaXwfRQ
 +Z6QlvNyXgqEmsNEnm/jNYo=
X-Google-Smtp-Source: APXvYqybYgGnUGioZ6fpOWG2paejsSTYsmbsAmKhoxrzuFb+0F55MiB7llm1MWv5f36LTb45oXLDqQ==
X-Received: by 2002:a1c:c5c2:: with SMTP id v185mr9372661wmf.161.1565985147985; 
 Fri, 16 Aug 2019 12:52:27 -0700 (PDT)
Received: from [192.168.1.19] (blc39.neoplus.adsl.tpnet.pl. [83.28.196.39])
 by smtp.gmail.com with ESMTPSA id r17sm16311692wrg.93.2019.08.16.12.52.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 12:52:27 -0700 (PDT)
Subject: Re: [PATCH v4 5/5] scsi: sd: stop polling disk stats by ledtrig-blk
 during runtime suspend
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-block@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-6-git-send-email-akinobu.mita@gmail.com>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=jacek.anaszewski@gmail.com; prefer-encrypt=mutual; keydata=
 mQINBFWjfaEBEADd66EQbd6yd8YjG0kbEDT2QIkx8C7BqMXR8AdmA1OMApbfSvEZFT1D/ECR
 eWFBS8XtApKQx1xAs1j5z70k3zebk2eeNs5ahxi6vM4Qh89vBM46biSKeeX5fLcv7asmGb/a
 FnHPAfQaKFyG/Bj9V+//ef67hpjJWR3s74C6LZCFLcbZM0z/wTH+baA5Jwcnqr4h/ygosvhP
 X3gkRzJLSFYekmEv+WHieeKXLrJdsUPUvPJTZtvi3ELUxHNOZwX2oRJStWpmL2QGMwPokRNQ
 29GvnueQdQrIl2ylhul6TSrClMrKZqOajDFng7TLgvNfyVZE8WQwmrkTrdzBLfu3kScjE14Q
 Volq8OtQpTsw5570D4plVKh2ahlhrwXdneSot0STk9Dh1grEB/Jfw8dknvqkdjALUrrM45eF
 FM4FSMxIlNV8WxueHDss9vXRbCUxzGw37Ck9JWYo0EpcpcvwPf33yntYCbnt+RQRjv7vy3w5
 osVwRR4hpbL/fWt1AnZ+RvbP4kYSptOCPQ+Pp1tCw16BOaPjtlqSTcrlD2fo2IbaB5D21SUa
 IsdZ/XkD+V2S9jCrN1yyK2iKgxtDoUkWiqlfRgH2Ep1tZtb4NLF/S0oCr7rNLO7WbqLZQh1q
 ShfZR16h7YW//1/NFwnyCVaG1CP/L/io719dPWgEd/sVSKT2TwARAQABtC1KYWNlayBBbmFz
 emV3c2tpIDxqYWNlay5hbmFzemV3c2tpQGdtYWlsLmNvbT6JAlgEEwEIAEICGwMHCwkIBwMC
 AQYVCAIJCgsDFgIBAh4BAheABQkJZgNMFiEEvx38ClaPBfeVdXCQvWpQHLeLfCYFAl05/9sC
 GQEACgkQvWpQHLeLfCarMQ/9FN/WqJdN2tf6xkP0RFyS4ft0sT04zkOCFfOMxs8mZ+KZoMU+
 X3a+fEppDL7xgRFpHyGaEel7lSi1eqtzsqZ5JiHbDS1Ht1G8TtATb8q8id68qeSeW2mfzaLQ
 98NPELGfUXFoUqUQkG5z2p92UrGF4Muj1vOIW93pwvE4uDpNsl+jriwHomLtjIUoZtIRjGfZ
 RCyUQI0vi5LYzXCebuzAjGD7Jh2YAp7fDGrv3qTq8sX+DUJ4H/+I8PiL+jXKkEeppqIhlBJJ
 l4WcgggMu3c2uljYDuqRYghte33BXyCPAocfO2/sN+yJRUTVuRFlOxUk4srz/W8SQDwOAwtK
 V7TzdyF1/jOGBxWwS13EjMb4u3XwPMzcPlEQNdIqz76NFmJ99xYEvgkAmFmRioxuBTRv8Fs1
 c1jQ00WWJ5vezqY6lccdDroPalXWeFzfPjIhKbV3LAYTlqv0It75GW9+0TBhPqdTM15DrCVX
 B7Ues7UnD5FBtWwewTnwr+cu8te449VDMzN2I+a9YKJ1s6uZmzh5HnuKn6tAfGyQh8MujSOM
 lZrNHrRsIsLXOjeGVa84Qk/watEcOoyQ7d+YaVosU0OCZl0GldvbGp1z2u8cd2N/HJ7dAgFh
 Q7dtGXmdXpt2WKQvTvQXhIrCWVQErNYbDZDD2V0TZtlPBaZP4fkUDkvH+Sy5Ag0EVaN9oQEQ
 AMPNymBNoCWc13U6qOztXrIKBVsLGZXq/yOaR2n7gFbFACD0TU7XuH2UcnwvNR+uQFwSrRqa
 EczX2V6iIy2CITXKg5Yvg12yn09gTmafuoIyKoU16XvC3aZQQ2Bn3LO2sRP0j/NuMD9GlO37
 pHCVRpI2DPxFE39TMm1PLbHnDG8+lZql+dpNwWw8dDaRgyXx2Le542CcTBT52VCeeWDtqd2M
 wOr4LioYlfGfAqmwcwucBdTEBUxklQaOR3VbJQx6ntI2oDOBlNGvjnVDzZe+iREd5l40l+Oj
 TaiWvBGXkv6OI+wx5TFPp+BM6ATU+6UzFRTUWbj+LqVA/JMqYHQp04Y4H5GtjbHCa8abRvBw
 IKEvpwTyWZlfXPtp8gRlNmxYn6gQlTyEZAWodXwE7CE+KxNnq7bPHeLvrSn8bLNK682PoTGr
 0Y00bguYLfyvEwuDYek1/h9YSXtHaCR3CEj4LU1B561G1j7FVaeYbX9bKBAoy/GxAW8J5O1n
 mmw7FnkSHuwO/QDe0COoO0QZ620Cf9IBWYHW4m2M2yh5981lUaiMcNM2kPgsJFYloFo2XGn6
 lWU9BrWjEoNDhHZtF+yaPEuwjZo6x/3E2Tu3E5Jj0VpVcE9U1Zq/fquDY79l2RJn5ENogOs5
 +Pi0GjVpEYQVWfm0PTCxNPOzOzGR4QB3BNFvABEBAAGJAiUEGAEIAA8FAlWjfaECGwwFCQlm
 AYAACgkQvWpQHLeLfCZqGxAAlWBWVvjU6xj70GwengiqYZwmW1i8gfS4TNibQT/KRq0zkBnE
 wgKwXRbVoW38pYVuGa5x/JDQMJDrLAJ0wrCOS3XxbSHCWOl/k2ZD9OaxUeXq6N+OmGTzfrYv
 PUvWS1Hy04q9AD1dIaMNruZQmvnRfkOk2UDncDIg0166/NTHiYI09H5mpWGpHn/2aT6dmpVw
 uoM9/rHlF5s5qAAo95tZ0QW2BtIceG9/rbYlL57waSMPF49awvwLQX5RhWoF8mPS5LsBrXXK
 hmizIsn40tLbi2RtWjzDWgZYitqmmqijeCnDvISN4qJ/nCLO4DjiSGs59w5HR+l0nwePDhOC
 A4RYZqS1e2Clx1VSkDXFpL3egabcIsqK7CZ6a21r8lXVpo4RnMlQsmXZTnRx4SajFvX7PrRg
 /02C811fLfh2r5O5if8sKQ6BKKlHpuuioqfj/w9z3B0aQ71e4n1zNJBO1kcdznikPLAbr7jG
 gkBUXT1yJiwpTfRQr5y2Uo12IJsKxohnNFVYtK8X/R6S0deKPjrZWvAkllgIPcHjMi2Va8yw
 KTj/JgcpUO5KN906Pf7ywZISe7Kbcc/qnE0YjPPSqFOvoeZvHe6EZCMW9+xZsaipvlqpByQV
 UHnVg09K9YFvjUBsBPdC8ef6YwgfR9o6AnPmxl0oMUIXkCCC5c99fzJY/k+JAq0EGAEIACAW
 IQS/HfwKVo8F95V1cJC9alAct4t8JgUCWwqKhgIbAgCBCRC9alAct4t8JnYgBBkWCAAdFiEE
 FMMcSshOZf56bfAEYhBsURv0pdsFAlsKioYACgkQYhBsURv0pdvELgD/U+y3/hsz0bIjMQJY
 0LLxM/rFY9Vz1L43+lQHXjL3MPsA/1lNm5sailsY7aFBVJxAzTa8ZAGWBdVaGo6KCvimDB8G
 7joP/jx+oGOmdRogs7mG//H+w9DTnBfPpnfkeiiokGYo/+huWO5V0Ac9tTqZeFc//t/YuYJn
 wWvS0Rx+KL0fT3eh9BQo47uF4yDiZIiWLNh4Agpup1MUSVsz4MjD0lW6ghtnLcGlIgoVHW0v
 tPW1m9jATYyJSOG/MC1iDrcYcp9uVYn5tKfkEeQNspuG6iSfS0q3tajPKnT1nJxMTxVOD2RW
 EIGfaV9Scrou92VD/eC+/8INRsiWS93j3hOKIAV5XRNINFqtzkagPYAP8r6wksjSjh01fSTB
 p5zxjfsIwWDDzDrqgzwv83CvrLXRV3OlG1DNUDYA52qJr47paH5QMWmHW5TNuoBX8qb6RW/H
 M3DzPgT+l+r1pPjMPfvL1t7civZUoPuNzoyFpQRj6TvWi2bGGMQKryeYksXG2zi2+avMFnLe
 lOxGdUZ7jn1SJ6Abba5WL3VrXCP+TUE6bZLgfw8kYa8QSXP3ysyeMI0topHFntBZ8a0KXBNs
 qqFCBWmTHXfwsfW0VgBmRtPO7eXVBybjJ1VXKR2RZxwSq/GoNXh/yrRXQxbcpZ+QP3/Tttsb
 FdKciZ4u3ts+5UwYra0BRuvb51RiZR2wRNnUeBnXWagJVTlG7RHBO/2jJOE6wrcdCMjs0Iiw
 PNWmiVoZA930TvHA5UeGENxdGqo2MvMdRJ54YaIR
Message-ID: <aed1b43e-0857-ac5c-2887-c9b444a6b51f@gmail.com>
Date: Fri, 16 Aug 2019 21:52:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565888399-21550-6-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_125230_427092_A88656F9 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Akinobu,

Thank you for the update.

Previously I forgot to mention one more thing - this patch does more
than it declares in the commit message, i.e. in addition to what is
declared it uses new ledtrig-blk trigger by calling
ledtrig_blk_enable()/ledtrig_blk_disable().

Those should be definitely split into a separate patch, preceding the
changes required for stopping polling disk stats.

Best regards,
Jacek Anaszewski

On 8/15/19 6:59 PM, Akinobu Mita wrote:
> The LED block device activity trigger periodically polls the disk stats
> to collect the activity.  However, it is pointless to poll while the
> scsi device is in runtime suspend.
> 
> This stops polling disk stats when the device is successfully runtime
> suspended, and restarts polling when the device is successfully runtime
> resumed.
> 
> Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Dan Murphy <dmurphy@ti.com>
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> Cc: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>  drivers/scsi/sd.c | 40 +++++++++++++++++++++++-----------------
>  1 file changed, 23 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
> index 149d406..5f73142 100644
> --- a/drivers/scsi/sd.c
> +++ b/drivers/scsi/sd.c
> @@ -3538,7 +3538,7 @@ static int sd_suspend_common(struct device *dev, bool ignore_stop_errors)
>  {
>  	struct scsi_disk *sdkp = dev_get_drvdata(dev);
>  	struct scsi_sense_hdr sshdr;
> -	int ret = 0;
> +	int ret;
>  
>  	if (!sdkp)	/* E.g.: runtime suspend following sd_remove() */
>  		return 0;
> @@ -3550,18 +3550,16 @@ static int sd_suspend_common(struct device *dev, bool ignore_stop_errors)
>  		if (ret) {
>  			/* ignore OFFLINE device */
>  			if (ret == -ENODEV)
> -				return 0;
> -
> -			if (!scsi_sense_valid(&sshdr) ||
> -			    sshdr.sense_key != ILLEGAL_REQUEST)
> -				return ret;
> +				goto success;
>  
>  			/*
>  			 * sshdr.sense_key == ILLEGAL_REQUEST means this drive
>  			 * doesn't support sync. There's not much to do and
>  			 * suspend shouldn't fail.
>  			 */
> -			ret = 0;
> +			if (!scsi_sense_valid(&sshdr) ||
> +			    sshdr.sense_key != ILLEGAL_REQUEST)
> +				return ret;
>  		}
>  	}
>  
> @@ -3569,11 +3567,14 @@ static int sd_suspend_common(struct device *dev, bool ignore_stop_errors)
>  		sd_printk(KERN_NOTICE, sdkp, "Stopping disk\n");
>  		/* an error is not worth aborting a system sleep */
>  		ret = sd_start_stop_device(sdkp, 0);
> -		if (ignore_stop_errors)
> -			ret = 0;
> +		if (ret && !ignore_stop_errors)
> +			return ret;
>  	}
>  
> -	return ret;
> +success:
> +	ledtrig_blk_disable(sdkp->disk);
> +
> +	return 0;
>  }
>  
>  static int sd_suspend_system(struct device *dev)
> @@ -3589,19 +3590,24 @@ static int sd_suspend_runtime(struct device *dev)
>  static int sd_resume(struct device *dev)
>  {
>  	struct scsi_disk *sdkp = dev_get_drvdata(dev);
> -	int ret;
>  
>  	if (!sdkp)	/* E.g.: runtime resume at the start of sd_probe() */
>  		return 0;
>  
> -	if (!sdkp->device->manage_start_stop)
> -		return 0;
> +	if (sdkp->device->manage_start_stop) {
> +		int ret;
> +
> +		sd_printk(KERN_NOTICE, sdkp, "Starting disk\n");
> +		ret = sd_start_stop_device(sdkp, 1);
> +		if (ret)
> +			return ret;
>  
> -	sd_printk(KERN_NOTICE, sdkp, "Starting disk\n");
> -	ret = sd_start_stop_device(sdkp, 1);
> -	if (!ret)
>  		opal_unlock_from_suspend(sdkp->opal_dev);
> -	return ret;
> +	}
> +
> +	ledtrig_blk_enable(sdkp->disk);
> +
> +	return 0;
>  }
>  
>  /**
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
