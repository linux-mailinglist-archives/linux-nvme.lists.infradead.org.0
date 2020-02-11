Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C074158FEE
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Feb 2020 14:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FnbHSIWlb1OGXkW0KYOMiNDIxQ26zA8wGtuN9cDQ71U=; b=GGska1JD2Okv91i7gcHlSTEiY
	NwWsR+Mjf/VMk2fN5leU2l6GBEFkvpFOCjCglDxIUrS1ycgThdceD2GypdufB5xYXksOwQYSYcuxK
	qdJgE8rAmJr36SWPsSD2KenzOFkjA3KgHziip3YyHj33zX8DFWgtrO6iVD1EN4usIVfH4ea0N+CtN
	1hwcNheLUMdzOwuwvniGlgnUrrLjvIRwDVOYnydSOCgsVAErF6kFyJlpwR0+ja3YoiXeRPj4a1EgO
	lk9I+dp43yUQcz43JDRU9LG8Zu2Pc5xdy3FH66PZFIOG89Ar4/Hpg4T0ls24xjNbLlE2PEA1/dQa5
	5id1mBX/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1VcD-0002iJ-HO; Tue, 11 Feb 2020 13:30:13 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Vc4-00021c-1k
 for linux-nvme@lists.infradead.org; Tue, 11 Feb 2020 13:30:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id z12so5739491pgl.4
 for <linux-nvme@lists.infradead.org>; Tue, 11 Feb 2020 05:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QDrFYL5gRBhaLllbmp4nb18NFsY2rA2VOV59dpT/6iY=;
 b=bSOmyZOMoeOWNi+ng5MqdBcd0057YvVP1bHvIm0fGoAeIp2trMZEPe4NjCD6Cr5f83
 IC9EvHoafhhr8SOyhtNwgIz0y+HbLx6MWVRpym8xiZxh9MAZBZKWStoyYLQEExK5o0hE
 JUnZqZDMdxJ6yxOXlOjVfZvqw1V8ZMHcEjdnq7rmnrpC7TjyxYeZnnof2UC6GPULj51m
 7JNHnd83/zsSQVLjNEfcc/RvGmOf/3U1XyTtNouIS8nJF69C9LMej/sgKTN3vxT3QGH6
 f4Nh4SjguL//v3mToLDcjZ3QW1GpcX5tw4nN0a2d7E516AH1tiMlutR7vIlDCniOpKLG
 PiEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QDrFYL5gRBhaLllbmp4nb18NFsY2rA2VOV59dpT/6iY=;
 b=UwWTYOyOwIK7UOzPA3p59gRviK4rQTmINq+Yrg5a/I1G+g9Bij5wNoWamnvPRTJM3q
 /5nbeTqJVVQtzmQcZETbxsmnmpFMEUwHHN+jU2rQnD+RAtfdTq2j2zOnYFrd7yoRLeWd
 yvVCIref1iDolKJc9gXrJ/nmXL7zPVPdj6RlYjN1rCumaVVcZbapi38VkRn/wSstDk36
 SOoQVMJ9j0fiYkE13j39QpnfwEy18mefJV3okO/7TPM5Bk7ddFwW0+6TuJMcs/eFGVrk
 UMQF9GYknF8JPzJ1ua96W/9HWdQunAsSTv+qH7Dhg5f9ma3t1J2Qw0lc7cxu59ltgsc9
 qy9w==
X-Gm-Message-State: APjAAAWRf76ZZfeiDwTvEyZ7CP5892UHMcihLx7xGzQk33ooiWAIdawj
 GVVhWqN8lu5VXe29xzIPlFQ=
X-Google-Smtp-Source: APXvYqyhcMwB0roAHr57uWoH+R05vkVcEtphpUf0et6WvPiQXCK2WNG8xDwVzfmZtSrB9BZ9L8oIxw==
X-Received: by 2002:a63:2a02:: with SMTP id q2mr6748104pgq.198.1581427801929; 
 Tue, 11 Feb 2020 05:30:01 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 f3sm4053077pga.38.2020.02.11.05.30.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 05:30:01 -0800 (PST)
Subject: Re: [PATCH] nvme: Don't deter users from enabling hwmon support
To: Jean Delvare <jdelvare@suse.de>, linux-nvme@lists.infradead.org
References: <20200211134136.099ac9eb@endymion>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <8f7e2414-bf9f-e69b-5cb0-beb5174a6db0@roeck-us.net>
Date: Tue, 11 Feb 2020 05:30:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211134136.099ac9eb@endymion>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_053004_099776_516D7993 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2/11/20 4:41 AM, Jean Delvare wrote:
> I see no good reason for the "If unsure, say N" advice in the
> description of the NVME_HWMON configuration option. It is not
> dangerous, it does not select any other option, and has a fairly low
> overhead.
> 
> As the option is already not enabled by default, further suggesting
> hesitant users to not enable it is not useful anyway. Unlike some
> other options where the description alone may not be sufficient for
> users to make a decision, NVME_HWMON is pretty simple to grasp in my
> opinion, so just let the user do what they want.
> 
> Signed-off-by: Jean Delvare <jdelvare@suse.de>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Keith Busch <kbusch@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   drivers/nvme/host/Kconfig |    2 --
>   1 file changed, 2 deletions(-)
> 
> --- linux-5.5.orig/drivers/nvme/host/Kconfig	2020-01-27 01:23:03.000000000 +0100
> +++ linux-5.5/drivers/nvme/host/Kconfig	2020-02-11 13:31:31.595715936 +0100
> @@ -31,8 +31,6 @@ config NVME_HWMON
>   	  a hardware monitoring device will be created for each NVMe drive
>   	  in the system.
>   
> -	  If unsure, say N.
> -
>   config NVME_FABRICS
>   	tristate
>   
> 
> 


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
