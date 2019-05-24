Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D492A16D
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 01:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NOKPKORmAmYPJjpwYg2Ujgz32iQA8yZoSvwjJntFjD0=; b=cBXvfKw6s+qveeahnio7UJzfR
	0jTQeMcToGaic49gM7XFwOLlwhFsv5gpqjXCG5CssvRMgvAi5icYgqV4bOSp72P0/tIIABn3oTR0X
	gs1bm1bgwdhUSiyFCPkbir1Gdljl30D8rw/2fe1GUDJlthIGdbZJndj6KnF66oLStMXyfgh82bimH
	pxzybZ+yKCpaPhCnaapM0Xtum3WmjwnR7xjHpdkVm5dH8DukV0krq63+tfc6Wb5AGnYRKpOTbDjqw
	uJt85y0YVPsjKZ83c+ll3gon8U2ZcGEbyygpQFFaPYpTcAvWQVio7E4m/Xdu/4oVoiXf1rcOp9au/
	rnh7TDt1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUJGA-0007FH-8q; Fri, 24 May 2019 23:05:58 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUJG5-0007Et-G9
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 23:05:54 +0000
Received: by mail-pf1-f194.google.com with SMTP id r22so3268616pfh.9
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 16:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DYXnIpsfBTDx264lJcn+hfuT+QGTDqptMqj9SKpgZFc=;
 b=kcYSvPVoOgdw8xgKDFFTUL0MaEG6xRYCE4/RH/zt1JBIqPnGwt4AZJMjrSwtNTAOEu
 PpW/7xYUgOSSZzgltQRqAG9EQl4SgLrsgBimibu2XtG/uaXpUMpOtLQS35vgQcI3W8AB
 CayDy9ASH5pZkKAmz1jluN6mFYUxJqrjYQek3lco2FgC4pD0krcdUyvhiUVpbNVybtf/
 Ivrx9nOM45Hw0NZD1SwAjqoWssoy69FSYD6ZuzcQceP9mky6g3JsQHEqdu1gw8yQrVTi
 LdONO/CDp6+Rdt5D8fXVfrYSPqAsnUMeCe/g4FaDVAotfOhSZtY85Ss87VpFC8G2X+GA
 RJRA==
X-Gm-Message-State: APjAAAXEoBCdASmeoMUso95m5lNv7WCKkkqhmNleD/w8frwGhC8SLtgi
 c/AB4Nh30YReK8CM8ah4o8c=
X-Google-Smtp-Source: APXvYqw0cT24/FoEnknoFBsyGGO7scPGZ4LCTk6QSogqP7BglXb5ZZP7pjni9NE5d3Kl+8RnQ608BA==
X-Received: by 2002:a62:1dca:: with SMTP id d193mr5657561pfd.93.1558739150909; 
 Fri, 24 May 2019 16:05:50 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id r74sm3757574pfa.71.2019.05.24.16.05.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 16:05:50 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and transport
 dev
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 hch@lst.de
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
 <da6603ee-4a71-e057-5c88-656455956eba@grimberg.me>
 <ceb1744a-cc68-9588-bd07-d3060630e857@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <724732d9-2ea2-e349-435b-ae664692b565@grimberg.me>
Date: Fri, 24 May 2019 16:05:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ceb1744a-cc68-9588-bd07-d3060630e857@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_160553_539126_23E527AF 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Do you actually need the extra reference on the device? why doesn't just
>> the set/clear of ctrl->device sufficient? these routines should be
>> serialized..
> 
> Yes we need this reference since the queues are freed during 
> reconnection. And without ctrl reference, also the device will be freed.

The device should be freed shouldn't it? I thought that this was the
purpose of the ref removal from the tagset (which is identical to what
you are trying to replace). I'm not clear on what this is solving that
the prior reference didn't have?

> And when you disconnect during reconnection, the block layer will call 
> exit_request for each request (but the device is freed) and we will do 
> the need unmapping from the device..
> 
> Not so plesent..

Which again is why we had the tagset reference in the first place. I
thought you wanted to remove the device reference altogether because
of your bonding use-case..

I'm getting the feeling that we need to map the qe's in queue_rq
and unmap in complete_rq. I don't see any other way around it because
on the bonding use-case we need to wipe out all of the device related
resources because we need to have it teardown and be prepared to get
a different device on the next (re)connect.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
