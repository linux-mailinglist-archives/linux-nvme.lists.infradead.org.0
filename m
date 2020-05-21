Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8BB1DD78C
	for <lists+linux-nvme@lfdr.de>; Thu, 21 May 2020 21:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U+qs/xczw0HpSyIiWq00Kx2+vOpe+Rp1jFFGeKLe27A=; b=pGKDgUi5XkwFuqco46/+M7ZLq
	8qOekwmTEdQ3iYlylsDjYiaV4kdEYx+HkTPJkUdu5mPo+S+aSWf4BEIUCd0obNAjYdw9VhB7+UWQq
	T5qPKeCr6ITHbV78S8Zfw2zm09RuhZtfflGuEY4KOKtXhBM65j0ghjr+jyQgaCT2Cs0dGD6cl1QQv
	mKBb8ec6LLFHu83nEejBDSqCTM0oAKLBZLMM6k0ITkzlaZLbH/b+mN2d+0LKglL8NYjGvFEY3QKsu
	MxNdq3p+lf1B6FngwTMZzvNUDmthZLMq9ZGbLwp3HepJOe9fa3s38NVHvIpl37h5LceNG6cYDCfNo
	qESBgm89Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbr9b-0005s3-VJ; Thu, 21 May 2020 19:46:55 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbr9X-0005ri-HU
 for linux-nvme@lists.infradead.org; Thu, 21 May 2020 19:46:53 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nu7so3674880pjb.0
 for <linux-nvme@lists.infradead.org>; Thu, 21 May 2020 12:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=72Z6I8JW4vuYp65kWpwR9Txg68W/7Ut08M8oiuIzIZU=;
 b=eKV+QnhqyJzUOjwVuPzMTSI7Mx+3KiA/ZEuPqaRG0MZR8fI7r9SCD7ZYIZepaYliMS
 OUQgujL7Lddx0F6s8YddNAFTYh/P/WbiMu47PX1YthswNGYUNZjCIa2tVfDh1kLHqOwv
 Jbdl8YFLz62xwHzMBiNCPGI+DtqCa5mBAcKJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=72Z6I8JW4vuYp65kWpwR9Txg68W/7Ut08M8oiuIzIZU=;
 b=FdJj+FxdrDcVRfRiuAV9jKK79byVNBS7y57ersa+uXcFzIsR3hkkEWsLPlmQQlfKYt
 /V4PUy8uUCO07rC5Fe9YOqmpF3+jfTnusFQeHeWzHcegjg4qy6SOhH4NLAdXgQF1dg/u
 vIzhLFvjGEBxD3jnReJAFnlVI8QzPwI+rlPeXMAp48OpQBy8D3fEyH1Fvg2TXXuaXQvL
 bLo99X1iJMfc3Qb4PPXNat/6r+ImCvnuTYngby0rua1iuGRJYNBroatDflqhvBkPhH/a
 OQmKB8lT+D6qH+Vwyly2qgzrl8+S+cGdn8erLUKd9ajpnRRPN/0ESFJv1Cqe2K7ed7R/
 utGw==
X-Gm-Message-State: AOAM532fyURVH5DlC30GhRzdb3Own/eTcHOoNroWOI1/YSSKfwyithyi
 HPQH6d1e5QSawqjhZpC0F6as+Q==
X-Google-Smtp-Source: ABdhPJw7C9/oVpQZoH01PVwj+/CCZpmK9yjlLKYwkxsuMAGy0wDwwrPjWX+F4NI4VMpmMQ/nvTGyLg==
X-Received: by 2002:a17:902:7c98:: with SMTP id
 y24mr10924633pll.37.1590090409866; 
 Thu, 21 May 2020 12:46:49 -0700 (PDT)
Received: from [10.230.128.89] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id z5sm4740843pfj.29.2020.05.21.12.46.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 12:46:48 -0700 (PDT)
Subject: Re: [PATCH] nvme: set dma alignment to qword
To: Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>
References: <20200521022253.3268324-1-kbusch@kernel.org>
 <77425d7c-e8b8-b012-b1b3-c083b0b3af3c@grimberg.me>
 <20200521152820.GA3269657@dhcp-10-100-145-180.wdl.wdc.com>
 <20200521152929.GA18535@lst.de>
 <20200521154151.GB3269657@dhcp-10-100-145-180.wdl.wdc.com>
 <20200521154256.GB19160@lst.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <babc85fc-4e97-466f-c14f-4a16f7712689@broadcom.com>
Date: Thu, 21 May 2020 12:46:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200521154256.GB19160@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_124651_582130_C1FBB6DD 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/21/2020 8:42 AM, Christoph Hellwig wrote:
> On Thu, May 21, 2020 at 08:41:51AM -0700, Keith Busch wrote:
>> On Thu, May 21, 2020 at 05:29:29PM +0200, Christoph Hellwig wrote:
>>> On Thu, May 21, 2020 at 08:28:20AM -0700, Keith Busch wrote:
>>>> On Wed, May 20, 2020 at 11:05:51PM -0700, Sagi Grimberg wrote:
>>>>>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>>>>>> index 805d289e6cd9..ba860efd250d 100644
>>>>>> --- a/drivers/nvme/host/core.c
>>>>>> +++ b/drivers/nvme/host/core.c
>>>>>> @@ -2283,6 +2283,7 @@ static void nvme_set_queue_limits(struct nvme_ctrl *ctrl,
>>>>>>    		blk_queue_max_segments(q, min_t(u32, max_segments, USHRT_MAX));
>>>>>>    	}
>>>>>>    	blk_queue_virt_boundary(q, ctrl->page_size - 1);
>>>>>> +	blk_queue_dma_alignment(q, 7);
>>>>> Shouldn't be an issue for rdma/tcp, think that it should also be OK for
>>>>> FC as well but not sure.
>>>> Okay, just to be safe, I'll make this a nvme_ctrl_ops callback.
>>> No callbacks please, especially without users.  If FC needs an override
>>> we should just add a field to struct nvme_ctrl.
>> Well, pci would be a user. But if you're okay with having the driver
>> default to this alignment, would you consider taking this original patch,
>> or do you want confirmation from FC developers on whether or not this
>> is safe?
> Lets wait for feedback from the FC folks.
>
> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

It won't bother the FC devices as they are typically byte-based for 
payload dma requirements.

-- james


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
