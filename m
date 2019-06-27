Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDF857C84
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 08:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3HYmoQMgXJMYduaXXjOBw3sItu1dhY8ZRoH1rBTLxlY=; b=ibAhO3yjOrG5k4qnSvsJPa7Lj
	6DANioNP5/7sDIr0pUgi0GYcp4oU5wrdpn9+kP1kRtupvMWHL3czkFjj8Yp6QRtzXQx96aO9qiYdE
	4vEIIv1We0MJbF2uFH3KsOW9BBoxfxVnCBJgIvReZqlylhoSUV6oHrDlvR/eR24+cYCHVxeDPLG8R
	5G7gOTMXOqD4vb6VAUpckOlm+Pgb/wdyKWlUdPCu6pOUKofPsrLZoSGCckfZUyRhhkvkUuC/wfes3
	u/6/omHzbguGyN0eFRm8DLIS+kF7xEwMNbCisRiK2Z7vkNiu1tPoaDfFCFtazXZQReJJzcnkgC9yA
	CiQ7en5Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOHc-0008J1-Kw; Thu, 27 Jun 2019 06:53:24 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8p-0006KM-3t
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZxxUAQzfbNrC4uVS3R4Ec7+ELDkDVIAicHLkaFedB+k=; b=DcVqfIieoxdXX+A3qunAgQVM/D
 EbhR3eHatpx+GfD9U830ujcG3Nm1dbkMz+c8PA9RcIj21oBH/2030NT1avcHE5m4ijp2e0WmXeUfA
 HtorX3kSYsfifT87mVaZQXzukhmaEwpr5w6B9cX6TqkZd3uzsiWIxQJuBuuIi3iDNG7oWS0Ny+J7K
 uOI5BS1GJZuZoU02Qtq1jaUAeJLulru9L/cHPtm9Qvcg/dPW2G3QELn/DEljInfphu2Ge6ZaxRuXw
 p/RxTwpEtqz0O/wXKmAU1G/O9YP/+a/aaIhPwhlvs0hYHhQbu2hL4HdXVO1zYV3T/J7vDWvcFJ1L+
 +Uplp2Zg==;
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIOp-00047c-Po
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 00:36:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so269781plt.1
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 17:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZxxUAQzfbNrC4uVS3R4Ec7+ELDkDVIAicHLkaFedB+k=;
 b=Ib25R10uq1SipE6gMYPJIWk7MH5CMyaPixHyeCnwbTR1n16GYkquMF4L3TsPU68eNB
 LKbNNEoLhVodUfnQNjYx4MXkz/n9DxPZ+Zwpxl8jFjFzEdWISeld8m7OYAvAoySI2yK5
 Jufpi62gKqHuUyC+/0Ha+KWLCMcHtCLPRwYvd3f7ORiXX5CwcVxc2jT956Fd+73hliLe
 /uUFNsoim9NVlHnLIGtNQdlRevI9adCDgEVPjkVc/cRmlgtuXbYE78vBmx2nO2alx0Fg
 4+ylNw86ATfIG9xlb6AYVoCrLR2jZB44lDKqYrtLYA6W0GMo1aeIOcVd8UPsyAORf14O
 V0Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZxxUAQzfbNrC4uVS3R4Ec7+ELDkDVIAicHLkaFedB+k=;
 b=kGW9pvidNrQMZd14G0PbyT988RUAYUtAHcPlCrPR3JvqiSF8OwAnwIo9doWkAw1mY+
 kAe24uhimDe1tRh8lY9jZKig5mna/RvVaphVvte+KTaE6r2+mdn3CPeyY1zV1D5oi58I
 Omgv10PxZMRuCE66edmZWRBlzGrAxr0X8fzoXyCZ+O4x48WOx3V9KilW8QSr8X51Awfn
 F82YUJMmp88xarUg0Yf27rf52YjGEPrGNs6g7yF9+s/KDwcqnY6e889L5ULX080YHcsL
 3Y5BCE+PjqJS16hXV5OT96cSGCXzk8RXJAeqaEuHwatCOUvzPhmoB7vl9KDgdCPoDwnn
 SLOA==
X-Gm-Message-State: APjAAAXYOyFfoDRdrHDcJrDyelEIOIr9qZCEfpPID2Xc2bQr6iQWQNi2
 TFcjaXS2q6r9FBHL/GoQrFTyUfHV
X-Google-Smtp-Source: APXvYqwiHbRoF8myQnWozLEG2SuQZk7lxdY6J9lYlMSed/NLcuaGjNXmVOJWnZCDunSgAQ+4WUVbEg==
X-Received: by 2002:a17:902:6b44:: with SMTP id
 g4mr1102407plt.152.1561595663934; 
 Wed, 26 Jun 2019 17:34:23 -0700 (PDT)
Received: from [10.69.69.102] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x6sm2988347pjp.18.2019.06.26.17.34.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 17:34:23 -0700 (PDT)
Subject: Re: [EXT] Re: [PATCH] nvme-fc: fix module unloads while lports still
 pending
To: Arun Easi <aeasi@marvell.com>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
 <ddcc1865-4494-9cfe-d371-9995c19ae1c4@gmail.com>
 <alpine.LRH.2.21.9999.1906261638450.7630@mvluser05.qlc.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <5ff51235-ec57-5657-9879-3f218b3b6c0a@gmail.com>
Date: Wed, 26 Jun 2019 17:34:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.9999.1906261638450.7630@mvluser05.qlc.com>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/26/2019 5:02 PM, Arun Easi wrote:
> On Wed, 26 Jun 2019, 4:00pm, James Smart wrote:
> 
>> External Email
>>
>> ----------------------------------------------------------------------
>> On 6/26/2019 3:20 PM, Arun Easi wrote:
>>> Changes look ok.
>>>
>>> Did you hit this during testing? Wondering because LLD would have unloaded
>>> prior to nvme_fc, so no lport/rport should remain if LLD behaves well.
>>>
>>> -Arun
>>>
>>
>> It's been a longstanding annoyance - usually tied with test cases that used
>> modprobe -r.   Issue is the drivers would call the targetport unregister
>> calls, which would release the targetport once all the outstanding ios were
>> cancelled to the lldd and the link-side association terminated, but the
>> controllers are in a reconnecting and not yet torn down.
> 
> Did you mean a "nvme_reset_ctrl/nvme_delete_ctrl" is in progress?

no.  The delete won't happen till the reconnect timer expires.

> 
>>  From the drivers point of view, they are unlinked. Thus it was
>> intended the driver could unregister/unload/reload/reregister and if
>> possible reconnect - allowing the nvme device to never be deleted. Given
>> the lack of module reference, when the driver module left, so did the
>> transport module, even with the live data structures.
>>
> 
> Thanks for the explanation. This reminds me of a similar issue we hit. The
> fix under consideration was to wait in nvme_fc module exit to quiesce
> rport/lport before proceeding.
> 
> Anyway, with the fix above, I am wondering, if nvme_fc is active for a
> brief time just after the unload of LLD, the unload of nvme_fc would fail
> (saying in use), wouldn't it? If so, in addition to the above fix, a
> quiesce (flush) of such threads during module exit would give "modprobe
> -r" a better chance to unload both modules.
> 
> Thoughts?
> 
> -Arun

True, the driver would unload but not the transport, but that's intended 
as we're trying to allow the driver to reload and not delete the nvme 
device in the system. If the device deletes, as there may be real 
consumers of it, they will die if not multipathed. A prime example is 
installing a new driver with a bug fix.  I'm far more interested in that 
behavior than making modprobe -r remove the most modules possible.

-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
