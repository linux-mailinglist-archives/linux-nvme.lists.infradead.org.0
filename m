Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098E079E04
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 03:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OHqqam/5yxuxDOzw2Q/q7o2lQBHf65b1O2Kg72xjZQk=; b=rmFCI2mRbR1qD4iCgju/jOyKR
	H4z30u4zEUYy6AmyMNioY6LCsaGTVL1x7rsYOSEPqHJHMgT8QL5qV+FtBuMUS70ePSc2yq7VqE7K/
	5OCVCypp/VI04rPJ/+XVCmJzQ5wV7nQ+tVFYE+tDtVwFCfvdArSiiSaXjb/01X91/q9NoM/WTVkGv
	a8OhCLIesRCrMbQxkGeHyqiK8TiJvMSfmUzDGC+xesJIIX/QlrjJKx4oS1nICaNV9/iaRbWenMPkv
	BUo/h2KwHCj/h9r785cD4Z+mSRdM0t+ArYGcluPpKGQC+oFin91JwtEa8JmzJD4Z2b2es7kW/LcDZ
	yM/ejee2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsH86-0004Z7-F3; Tue, 30 Jul 2019 01:40:42 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsH7y-0004Yn-Gz
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 01:40:35 +0000
Received: by mail-wm1-f65.google.com with SMTP id f17so55094848wme.2
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 18:40:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=i2Rk6RkkWS2tePZpcjuYPJNHMBxrs2ScjFGun7KVVnY=;
 b=neERi7Dm6oTymJTwpttLmlP8cAeJHCd9P4ksW7yOkKbA4Xgno5S+m8RvhYSAp7Uvk/
 HBzkIQBywSK+7D/aPKoRf88zTCrv4o/Cg2WcWFZQqpX6lsdDnJxzKU9zFIUxNg/Hx1Hd
 jUFUaOqLzPE/1fXAP1VQ1Esr1Y0jPeoE05qdmA5iKn7yL0zbEMOXw/Ac3GvZBRQEWM/l
 LJfQh/cd+NrFMViGFD/VL3+szSOF+Uoh6mDbG6DnSBLkvGo9Ceer84mRtaWuwLS/fCBR
 Ih3R6L9YLe1SXmIv3T1EjUY5u09uFF0L7ZsKU8c/1+Fh6xJm/BSruPuOuoAz+ljK90Gy
 xmzA==
X-Gm-Message-State: APjAAAX0R4yDphCKCEUoDLd6l+RXUFaYUal0lPPvoL1LPHyAVZ1szLMe
 5yRmMVfDX8bDZ7gmqsEyE4rVKNad
X-Google-Smtp-Source: APXvYqyJnh1w+p6Yn2Dg5SMIyjyuesGnE+ru9y1w6ScP0M0GOvfMj3YIH7c5o1FR+/W9DGGmI0HQbw==
X-Received: by 2002:a1c:4041:: with SMTP id n62mr41847736wma.100.1564450832903; 
 Mon, 29 Jul 2019 18:40:32 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id c1sm144728812wrh.1.2019.07.29.18.40.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 18:40:32 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Ming Lei <tom.leiming@gmail.com>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
Date: Mon, 29 Jul 2019 18:40:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_184034_568033_9316E3C6 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 7/29/19 6:30 PM, Ming Lei wrote:
> On Tue, Jul 30, 2019 at 9:19 AM Sagi Grimberg <sagi@grimberg.me> wrote:
>>
>>
>>>>>> If a controller reset is racing with a namespace revalidation, the
>>>>>> revalidation I/O will surely fail, but we should not remove the
>>>>>
>>>>> No, there is sync IO request in revalidation, and the sync IO can't be completed
>>>>> during resetting.
>>>>
>>>> Why? of course it can. The controller reset is responsible to
>>>> quiesce + abort + unquiesce both I/O and admin commands.
>>>
>>> Abort simply cancels the in-flight requests, which will be retried &
>>> re-queued into
>>> blk-mq queues, and will be dispatched again after reset is done. That is why the
>>> revalidation IO won't be failed.
>>
>> These I/Os are admin which will not be retried (because we mark it with
>> REQ_FAILFAST_DRIVER).
> 
> Yeah, this way is fine since data loss won't be caused.
> 
>> As for normal I/O that meant to be retried, it
>> still must either failfast or failover to another path.
> 
> Why?  If the IO is failed, dirty pages may be lost, and it is one generic
> issue in either multipath or not, and I don't think the normal IO should be
> failed at least in case of non-multipath.

This was meant only when the namespace is going away.
Yea, if the namespace is not going away as described in this patch, then
yes, it will block until reset is completed.

>> (see the patch I sent Logan for an issue in this area:
>> [PATCH v3] nvme: fix controller removal race with scan work)
> 
> The above patch is only for multipath.

Yes, and again, addresses the case that the namespace is going away.

So I think we are in agreement? I only need to change the commit
message from: "the revalidation I/O" to "the admin I/O" ?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
