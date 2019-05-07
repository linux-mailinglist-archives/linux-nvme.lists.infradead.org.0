Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A475616217
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 12:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DqB27Gk4J6tj8BhOoKndmZAhdhZLITIuzzxtdM7HQpc=; b=PQuf1UcpsDSOQcdXJnxxqlwnc
	u6e4fwoWvIp+GTdrmsRx3jmWCidqmPYZT0WmxpiYX74DrtAAERRKMwIsiwqnOS9xY5NwNUIPJEb/u
	og8we6/pT130ypXSAL0QCVDsjdIgOG5MMZrLyZNQjdenFdXO83ur0zphX2DwbBl+kLCoChN84/L8D
	nwfBpcuT9LoRO/bQ99GufFtAPtic9ogwoftQ5qD3eHkbjVReaKsTmH14GL5kZ24Dhi24n4wT53u07
	r/Um+vA7aQ/OdNjd+nb9qTF2e9jxbQOHh3pJUf4jKSEHvy4oFmslSFQGwpsMlhfRBOt4JaVBGb5J0
	DdZp1Df4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxZx-00014N-NM; Tue, 07 May 2019 10:44:09 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxZr-00013s-Un
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 10:44:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id ck18so7993017plb.1
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 03:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Koh9o9dOdVOQ443cnsLWgwRdzb+IUjM/A4+j9bR+Q0g=;
 b=L9bWQ2H9KGMlWaYGt/uuQ/uJgHty8yoAHgZvNa8EMv3oH2LspQn/TXGs9Oy4PK0Czo
 PTou8/fOkAPwf5FpQO8XBHXDG7YlziZmZX6qF95gywkoTN9FkeA4LHKaxAUdPMV9vPCr
 aOwNjLxdiiz01n7wruCuffPzvbIvAGMdbXRooTTUDqhE/fqSlHeUfI1QsFbvoH/D8nyA
 KWQcdvju5IkDZSqzYOH+xMamGGuXXnBN6dNLjFR4lhfNfUern5dCfj/GxRiIXOLG72Fy
 UNxFzmaZemeqp14ch2tz0ba4cBqyx+osQKAXAM/k71mow5g0E69HWkHwdAQPp2QYNXxT
 R6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Koh9o9dOdVOQ443cnsLWgwRdzb+IUjM/A4+j9bR+Q0g=;
 b=qu2nO8Kgwo2u3911WNCwmykG8MhVatqJX+LOrs5mh+nBVoAmpZ//zIJ02mG2L66R3R
 /1csdLkCfGz5Omnix3fbxHCS4oVdlO9od40EzEeVoImGwDyhIpdT46Y0zIh66H853pzA
 E8aGdicn/tIF1ReUzGvuaIJBk5CiC5ILxdHUNk3KPbWy8EanEx8s/kn5PuWPr5E4kzSX
 UJJTWqzOniwCSmxrZX23r+fq37D/LmNwVDTFLJrhkY3fuqOH05C1OoNHnp1OAzjKxJp5
 he3kns9H4gEHkv3xM0o9iUyI5snA3EsRW+1262xfxbSJrMwm5Y6ThR2r/QWt8gR/i/Mq
 hrow==
X-Gm-Message-State: APjAAAW/2NBCI3sn0hz2yvVa6BpWdCb+NkT/MMHbNmeKHF6461c04k30
 6BR/1PjsI2rafKyROt1qQ4s=
X-Google-Smtp-Source: APXvYqwFso/Lo7VT0tGrCTAGKepxVld8Gast9aOtg5mE2s8aEZvomtS97Nb7AK3rzWKNMYde1rue3w==
X-Received: by 2002:a17:902:2962:: with SMTP id
 g89mr39174562plb.190.1557225842702; 
 Tue, 07 May 2019 03:44:02 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id d15sm17307135pfr.179.2019.05.07.03.43.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 03:44:01 -0700 (PDT)
Subject: Re: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "minwoo.im@samsung.com" <minwoo.im@samsung.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <SN6PR04MB4527A10184AEF3DDCC23CB0886300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-3-minwoo.im.dev@gmail.com>
 <CGME20190506223810epcas4p224242aa97518322bcbe2aa11d39d84a3@epcms2p6>
 <20190506225645epcms2p6b5efa570eade06b215b78418a0fbfdcc@epcms2p6>
 <SN6PR04MB4527DB454B2CF9170B32464386310@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <7a07f98a-64c2-1f82-a69d-bd3a5412a73d@gmail.com>
Date: Tue, 7 May 2019 19:43:57 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <SN6PR04MB4527DB454B2CF9170B32464386310@SN6PR04MB4527.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_034404_017420_959ECF8C 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> I really like the idea of tracing for NVMeOF. However I think we need to
> design the tracing code
> 
> so that common code for host and target will get share. That is the main
> reason I want both the
> 
> host and target side tracing to be done in the one patch-series. Even if
> it is taking longer we are
> 
> fine with that.
> 
> So ideally patch series should look like this :-
> 
> 1. NVMe-Core tracing change for fabrics commands and common code
> preparation patches.
> 
> 2. NVMe Host tracing changes.
> 
> 3. NVMe Target Tracing changes.
> 
> I'm fine with the interchanging order of 2 & 3.
> 
> any thoughts ?

I'm fine if it takes time.  will prepare V3 patch with what you have 
proposed above.

Thanks.

> I'm not sure having additional branches for tracing is a good idea in
> the kernel
> 
> where tracing is disabled, that is objective, if maintainers are okay
> with that let's
> 
> keep it that way.

I don't like conditional branches here neither.  Let me have a time to 
catch some idea about it.

> You are absolutely right. Since it is been used several places now this
> is good time
> 
> to have a preparation patch, and I don't think we should delay it more.
> 
> Also for host and target NVMeOF tracing it will be useful if we
> encounter same
> 
> scenario.

If other people agree on this, will prepare right away.

Thanks for your kindly review, Chaitanya.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
