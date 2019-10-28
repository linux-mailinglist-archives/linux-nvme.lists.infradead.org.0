Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7DAE7295
	for <lists+linux-nvme@lfdr.de>; Mon, 28 Oct 2019 14:27:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q1Oo2EXJ/glQsEOJzjko6cUaNz3DY0QJJ2KQhQfoToA=; b=BiZcLtRTgjz6RiIdz5O+miLMn
	jwPDg8/ZS/GdinNUMou6rFi5jRmrWH74Z6VD4T480uFohzF5q1cakzWRYbcATPjZjSpWz3M/x5xpV
	DbXT94RsSCagN+RpMKmckAQUd+OAzkn2JR44rqIvzbR5oMLd2tDhUq3hYhmJ1VoT/ayUTO4uLzgij
	xnfcqApRL0iIav1Kv5ruFbIVZWVRIcPNqzSOPItrsLvky2QB5yARGiUQ9Yrhdu8ChSX8CeRc8vUSU
	NlPn6Jrqoczzj4sUn7fJADCDtWL/nUbgJ5jgdjFxDI1x/1oMRXeFxwvNBKxx01A9Bw1KxfqWPwZxC
	pMp/C2l9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP53W-0002uR-EB; Mon, 28 Oct 2019 13:27:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP53R-0002tJ-N1
 for linux-nvme@lists.infradead.org; Mon, 28 Oct 2019 13:27:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id q21so5560555plr.13
 for <linux-nvme@lists.infradead.org>; Mon, 28 Oct 2019 06:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=m82WuZFIPuaz/xDcmdAtFNmGLYLSIvKFnSpY+e0Rr/8=;
 b=XxsLjvXeFlFJnZv77GLwIK8SZNTDqwb7cc7HQmkcu+gGtubvG+oi5kLcn641B9uAhT
 Imjkr4zOwiheXC3Tt0akZPdeScucEhxZ2Bojhcn3R2IRGuN0odNBNR+TqxObUfc6V5Lq
 BDEWPO1h1cMeCIFUajcaa35JqDV2ou1RDxCShbPUVfd9AQ9cxfFE8vrMCi4rfXJSQb8x
 leLUKF/nPTnbJledc6kcNlxN74x9H6hc3zoNt9D/1ANS2tFiyLEEA7Eb4M+s4HNGgJ+w
 BQJfJzTTIDdR6lCXqkQY0Ftanam8+QoiKwhdzUXInM1sJkiOfV30sfSDNvw+4DM5fQsD
 T4fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=m82WuZFIPuaz/xDcmdAtFNmGLYLSIvKFnSpY+e0Rr/8=;
 b=NImMJpLwAONdO5n4mueZtxgYCSYh/YbYYVuDov+uz4tkTJ+iDgZwodwZwc1RP3KLE5
 NWc8XsBT+JRdETOAEI/8iAK5n4c8+13ngOzztxNZwewlfe5Gr7KmTyCppcp6YBtaFuKf
 VYiMUNWb/IytsSd1xFGeKIM6dhkWmUl92/nAkTK6Y9l3vZwxQZZobFUNvPUMuphixQY2
 BjJpOJUM5mIl3IwfNL5bV/s47EhxXibmMLbc1D5TcNwXESNdnSDfT/31WQKxblrKZPin
 FNZ/JmPAsygvnx72DfvDexto6WsmkOOcZnVduoje6XWNSWYLKf44/AzqCqEsMpkMVWS5
 Zfqg==
X-Gm-Message-State: APjAAAWhcdCTyN2mIDYB2pKuLT0/I9eCECOc7Uj3o1h1UzXZL4O3R/Fi
 qSfTrQLCCf4h2KIYdXxufjY=
X-Google-Smtp-Source: APXvYqyfNFfZt/94g2Xhm2J+dNpQR0RuL4kH0F5u4ynhxy1z3BUV6UuA9j66ce9Mw/+x+BBmq09mZg==
X-Received: by 2002:a17:902:6ac3:: with SMTP id
 i3mr11909551plt.294.1572269245749; 
 Mon, 28 Oct 2019 06:27:25 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a16sm11940383pfa.53.2019.10.28.06.27.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 06:27:24 -0700 (PDT)
Subject: Re: [PATCH] nvme: Add hardware monitoring support
To: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
References: <20191028024156.23964-1-linux@roeck-us.net>
 <20191028073953.GA20443@lst.de>
 <20191028080858.GB1718@redsun51.ssa.fujisawa.hgst.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <769941ad-22a7-a046-60cd-b084457d9789@roeck-us.net>
Date: Mon, 28 Oct 2019 06:27:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028080858.GB1718@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_062729_750937_EB5DD9C8 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Chris Healy <Chris.Healy@zii.aero>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 10/28/19 1:08 AM, Keith Busch wrote:
> On Mon, Oct 28, 2019 at 08:39:53AM +0100, Christoph Hellwig wrote:
>> On Sun, Oct 27, 2019 at 07:41:56PM -0700, Guenter Roeck wrote:
>>> nvme devices report temperature information in the controller information
>>> (for limits) and in the smart log. Currently, the only means to retrieve
>>> this information is the nvme command line interface, which requires
>>> super-user privileges.
>>>
>>> At the same time, it would be desirable to use NVME temperature information
>>> for thermal control.
>>>
>>> This patch adds support to read NVME temperatures from the kernel using the
>>> hwmon API and adds temperature zones for NVME drives. The thermal subsystem
>>> can use this information to set thermal policies, and userspace can access
>>> it using libsensors and/or the "sensors" command.
>>
>> So these reported values seem to generate some interest.  Adding Akinobu
>> Mita who also planned to wire them up to the thermal framework.  I don't
>> really know either upper layer so I'm not sure which is the right one,
>> but with this just like with the previous series I am quite worried that
>> we add a lot of kernel boilerplate code for information people can
>> trivially get using nvme-cli.
>  > I think it's nvme-cli requires root, where this conveniently doesn't
> need those elevated rights.
> 

The other point here is the thermal framework. One can not wire that up
through userspace, and even if it was possible to do it, that would defeat
the idea of having the thermal subsystem in the kernel running on its own,
without requiring userspace attention.

> I'm not familiar with either upper level framework either; my only review
> comment for this patch is to use devm_kfree() for the error cases.
> 
Makes sense. I'll address that in v2.

Guenter

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
