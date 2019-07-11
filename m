Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380B265B54
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 18:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6jLYe/bFGJIkgJ2YWdwuvP99M/VVXOVlcrt/tv+Ci4Y=; b=mgoFv3lMlLWcTx0a4s/r4uzki
	PRtYUnM2uhtZb5WCSuc39pY1HMsPvrqofCE2zcuGaMObxp/rVeC5BaFMdLBQ4AZukaHpkQrqGkGTe
	zFMDkzCE1a321bY50f/Dy5sMwobh2/vED/yKSPtNsJFtw+eGI0ZQ+v4MF8bDioQ+kN14NutN4NxqD
	2ENxE2nhpDSKdfKdQjrKN7dgoyZc9zJzM0b0wCDCb+g824P9tAdSBI46U743oIASKxji6WXB9T3sN
	BVYQf26QyCSNzua52KEXeFbAjsftRtDllp7hSQ+fUgDASSbtGdwqL0mUbqzOE1dr4szx1aYv2SsVP
	sTRrsx4NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbka-0002VN-0k; Thu, 11 Jul 2019 16:16:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbkQ-0002Uv-LH
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 16:16:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id q4so3171171pgj.8
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 09:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=F6TB3ZFUGjQgbGuXZMgYyzhjOslNga65rWLKdTRxNGY=;
 b=Ocq/EAA5VFXO4JGp7B7CanhqsW2eH251KPVrZfxxki4VsFhzRUGQDMKaZCPDNqZRS/
 dQn33GyP1G2+uz+gqmeIqeksep8BYvjTQpLp1JAM84SbITMBWnbik/Xm3WD16K9UvPWO
 GLIk322miaBjxmvmht5H57hJUtyKhggpDKW6AfQUU1f4XaDR32yXDc3VAyvV4LnH6z9v
 5nnoVx2n1E5eHkjphUzwcoZwcLnqos+cyr+LEErbDz4IOIBtu7NLv640/f+4kuF66XbJ
 ppLXNZn7joN2NM1fc6Yrx0fqkNvHmg63s68r0eG8pZv3xwCejeriNG5hBuS14c6BP5Dk
 RMKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F6TB3ZFUGjQgbGuXZMgYyzhjOslNga65rWLKdTRxNGY=;
 b=OZBGNEBfQYmlco0cX6cTUdwuJ9qUQBT0Ej7YUHxrXopHJn6X62cQ6xKHSsUz4KETC8
 QMfX5aLcPyWrpIcgc6NEFGu/95hJ/DaWLZuDF0QqtDt7tggEM8kUBYQUpYeMTMGTrf5E
 F2YMrcY9Pzhw0CysTBcbVG2eRQ2eQbw5mc6+ZR2yvygc+m88kL+wggK785vD5vztU/g6
 5dHpRkAds19ut7vWXQb+Cvy5XZijgqc8TCvWoRJAzZxJOvpdzUAhhh0+xGKgEnmUcO5L
 8z7Us4qcSb/y4+7gCg2wPAvFGj3pa4XtexZIBXnmkgSwb/1nshApxRwRwIRFE7Y7q+da
 26cA==
X-Gm-Message-State: APjAAAUZht14g3co/qqIwf69Z0JRQB7hOQA1CeSDen10f3s/3YG2iFmM
 S7XHxwFBH0DmElf3GrruXDK1DVMm
X-Google-Smtp-Source: APXvYqwWBXyWhi3xo9sSPeeaee/w54m7fR+uBI6t0AMgHXCpTlLIoatM8B0gqxswhyxUa8z77cti8Q==
X-Received: by 2002:a17:90a:36a7:: with SMTP id
 t36mr5686450pjb.34.1562861801786; 
 Thu, 11 Jul 2019 09:16:41 -0700 (PDT)
Received: from [10.69.69.102] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c69sm8033855pje.6.2019.07.11.09.16.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 09:16:41 -0700 (PDT)
Subject: Re: [PATCH rfc 3/6] nvme-cli: allow discover to address discovery
 controller by persistent name
To: Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-4-jsmart2021@gmail.com>
 <20190711124116.GC8398@minwoo-desktop>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <39f7417d-dd5c-8c81-a4d5-7b8a313deaab@gmail.com>
Date: Thu, 11 Jul 2019 09:16:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711124116.GC8398@minwoo-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_091642_702122_AF081311 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/11/2019 5:41 AM, Minwoo Im wrote:
> On 19-07-10 16:27:37, James Smart wrote:
>> To support discovery (connect/connect-all) to operate against a
>> persistent discovery controller, let the discovery controller to
>> be specified by its device node name rather than new connection
>> attributes.
>>
>> Example:
>>    nvme connect-all ... --device=nvme5
>>
>> Also centralize extraction of controller instance from the controller
>> name to a common helper.
>>
>> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
>> Signed-off-by: James Smart <jsmart2021@gmail.com>
>> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> 
> Hi Sagi and James,
> 
> I think it might be too late review on this, but please have a look my
> comments below :)

well,  it was posted as an RFC, so....


> 
>> +static int ctrl_instance(char *device)
>> +{
>> +	int ret, instance;
>> +
>> +	device = basename(device);
>> +	ret = sscanf(device, "nvme%d", &instance);
>> +	if (ret < 0)
>> +		return ret;
> 
> It's just nitpick, but could we just do like:
> 
> 	ret = sscanf(device, "nvme%d", &instance);
> 	if (ret < 0)
> 		return -errno;

I would think that what sscanf might report as a problem may not be 
something understandable for someone using the cli. I'd like to replace
this with something like -EINVAL for an invalid argument rather than 
ret/-errorno.


> 
>> +	if (!ret)
>> +		return -1;
> 
> Same here.  Can we please do:
> 
> 	if (!ret)
> 		return -EINVAL;

yep


> 
> 
> These two things are not from this commit, but if you don't like it to
> be involved in this scope of the commit, I think I can make it later, if
> you don't mind.
> 
>> +	return instance;
>> +}
> 
> I have a doubt here.  In case of multipath, if this function is given an
> argument like "nvme0n1", Is "0" really an instance of that controller?
> I think it could be an instance of the subsystem.  If so, can we just
> prevent the argstr as a namespace node?
> 
> Please correct me if I'm wrong here.

it should never be given an argument with the n? suffix. We're dealing 
with controllers only. And multipath won't confuse that.  Perhaps we 
should verify it ends at the controller name.

-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
