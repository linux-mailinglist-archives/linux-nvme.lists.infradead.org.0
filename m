Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5177F9852
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 19:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wlGzAtiN+I8NCdS16Si7XINwRL/VpZHNm7Bzb7r/ZSA=; b=LHX0BlshPXOZxqX6qCeFy7qpD
	USZoFrORioOkgFimKciIhXzkXBfMFqI4VAxcM2RcsjSGgDMiPHZABOO7l8jkZ/bdRynrxoIeXtIV9
	sDDaZcz6QXmFVDr2pggld5UCT+EB/qqUTuWsRPh5z26wBabQECP5ItV1ZvwNQG5MIeS7uVDMXl+nF
	QynaX5BtCiPzcpOEwDzJgQuP9Q5Qdu6YL8Dky/pLo15vG7DlneY0Yc30J4TjQbUCBO4kZCp8foUtf
	krHM2PSd2ceinUEceMArEsrAfC6UoO4zIkCTIcrsJ5bKQ4Rkj28FEDZTkCfuRyW5XicAfAd/wOWhy
	BCRIbW01Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUagG-0007hT-Ig; Tue, 12 Nov 2019 18:14:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUag8-0007gf-SP
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 18:14:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id j18so2949298wmk.1
 for <linux-nvme@lists.infradead.org>; Tue, 12 Nov 2019 10:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=DIr3AOPTR1J2qyNOW9mphSG7c6tbGYUQ1zt/ALtJ6r8=;
 b=Hf+y9X7IPNyxdQhfG3e4lWnD7fZwAw1UK6bouGrzs6++TrLUA6seiEEaBUGqfAGEEb
 k5AH63QqqEqagkRbQl2rTrJBwddgLqsZ2FIoK7ZjFd57Uf8rxlROw+0s4N1O1U0xm0Yd
 az+QAgkkfGD4+IM1uw2gCSZjGXWyZL1fDchFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=DIr3AOPTR1J2qyNOW9mphSG7c6tbGYUQ1zt/ALtJ6r8=;
 b=FM0Vn1hVjhgEr3HKG3y6A1Wu76SjG9Bk3Io0dnkEEnbVW9CAVmLCdd2HdkxTLb4ytv
 d/RZGqbK3mikU4hqZhQUpsK3sVl14iSauQH/3eKN0vGYHgWwAVR49Hbq67WXHWGxphMV
 YP9W41hbz4ubpj9CxK6q3ifuGh/sZKkZy/2ojs+kkNZgVfje3tr7Hi3wLF9zo443dCiP
 nPzaZQvsmsG3tdJnZcgovKzWYcaZQlwiQZ9yNbWUlVec51m4xoEGboMdgiJ7jm+ctdjg
 eblU/ZVvsqvdLH2gw0Ad/WSiFD25Pa5bJmn0fFWgU/cFfkqDhLOXQlQuFCcWBcoefuDH
 znDQ==
X-Gm-Message-State: APjAAAXdoKJn12IwM+Vnm2MH+EhXdat+JpV0NBDXEEV++VtRjgezVOCT
 GAauHVsPBMCgMRgPtkukGcZ6XQ==
X-Google-Smtp-Source: APXvYqyHYLh2mW0le0h4fv4fHpw412qkSZ+so+TYP8Nkp1mhZGNFBUXcMBe8udFH8MlRDgmfsbp5QA==
X-Received: by 2002:a05:600c:2909:: with SMTP id
 i9mr5124447wmd.39.1573582450946; 
 Tue, 12 Nov 2019 10:14:10 -0800 (PST)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m1sm6463569wrv.37.2019.11.12.10.14.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 10:14:09 -0800 (PST)
Subject: Re: [PATCH] nvme-cli/fabrics: Add pi_enable param to connect cmd
To: Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-2-maxg@mellanox.com> <yq15zjwza2y.fsf@oracle.com>
 <ed926da1-1466-edbd-6fa3-fb828bf455cc@mellanox.com>
 <yq14kzdx182.fsf@oracle.com>
 <b3670fb4-7782-d4af-a9a5-c30b6d1db6f0@mellanox.com>
 <98aa5f26-909d-1e93-55a2-cd2ba9929ff7@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <e4e34db1-7f0e-9b95-dc17-e08d4bf0c514@broadcom.com>
Date: Tue, 12 Nov 2019 10:14:06 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <98aa5f26-909d-1e93-55a2-cd2ba9929ff7@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_101412_928652_5AF703C7 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, oren@mellanox.com,
 kbusch@kernel.org, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 11/12/2019 9:47 AM, Sagi Grimberg wrote:
>
>>> When an I/O request is received by the SCSI stack, we inspect it to
>>> determine whether we need to allocate one or two scatterlists. If the
>>> request has a bip attached, we'll allocate a separate scatterlist which
>>> is then used to map the protection information before the I/O is
>>> submitted to the device driver.
>>
>> For an NVMe/RDMA controller we must allocate a pool of PI MRs in the 
>> constructor function in order to support E2E PI (and it's expensive).
>>
>> We can't do it in queue_rq function. In queue_rq we get the needed MR 
>> according to the namespace format from a pre-allocated pool (PI_MR 
>> for PI_namespace and REGULAR_MR for REGULAR_namespace).
>>
>> We can go with the module parameter approach but it will be very 
>> limited for users and wasteful.
>
> Yep, this is a fundamental difference for the RDMA devices that supports
> integrity.. You effectively need substantially more resources to track
> all the inflight contexts.
>
> We could in theory lazily allocate the special resources, but the 
> queue-pair extra sizing is not something that you can change in 
> runtime...
>
> I'm fine with explicitly enabling PI for controllers that we know that
> support PI.

Ok - but we're still going to want the ability to dynamically recognize 
support in the transport and in the controller and turn it on even 
without the user-space flag.

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
