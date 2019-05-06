Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E12150B7
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 17:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CFd8AM0MTjXBHqjk2CPoBiFaDp+eXHHAg1XU0ooN9sQ=; b=RZFr4z5qlxezmSBSk7wVH9/Uf
	EqqN91DrNZ+x+BnpxrY0R9eQkobyfplT8ECdlxgUDQmUYjGFIom2gfk1UgxTg8+PeaUFgebQKMoD2
	EyS0lig1+D3q+mvb2j+WX6wbeEReTFs+PwbXD40iIyMwDm2LV5d3pY6SROCY4V4hUV8169ARg6sJm
	tRU4apNGsU5vrS8K302CFIugmRCLVydS32eRxWveKvIQVzQ4te+wUvw7APR5Qcb3XkjZdeVaPY3Mt
	Cu727a6s+Yt7vaRjZKVOEWf0xKoapI6eNLXkXPSiyD7GaXUTifTuhiMeabbjcXMFmqekGwiKjneyo
	0/e1WabmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfv1-0008JX-OX; Mon, 06 May 2019 15:52:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfuw-0008JC-SP
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 15:52:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id z28so7003862pfk.0
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 08:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=unPDwo2U3XSCUEi+TsyqVlbmrlm0LWyVXgLGCJRWv8c=;
 b=OJrEHfLmy7XfoKREg4KK2mhQV4GpNpATQVMIDZ3G/L9fonYwra6MH5ifP/NPMsmQFc
 ZoTh9Fs8SUs6r2ngPRcP0nYDntgqbDPfJuozytRor5812UlvC/qymBGuXCein1WDTyN1
 rmf82vfobqRKZMcChBCIpfKB3dxMQAjG+JZdwRrejFF5rONxWBAMMVMiUDp7yXyv27lx
 Wm/Pp9uXn22Op2YnAyoYA9kTwZH7VQBWSwoE3lBE2pQIBRaBvqQ9QI4Xqjy2dqU8OcFn
 A5D0cAZ1z404I5vbZHqEWVLI+qd7YKVHOIhYX0ISsA14dcN93iPPy7cvizsqseUZSRid
 yr0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=unPDwo2U3XSCUEi+TsyqVlbmrlm0LWyVXgLGCJRWv8c=;
 b=n5NjaVc/v6oMaa882DmmcuKG2Mz+MntvYrlj8yqU8hmM5SRMkRrzo3RefZ2xM/rFVv
 RORDXwuHvPtTxH36VmElAmsqBX4qsVZOSqtIGyYwVbKBPB+93faUMizCpiza687IQiuz
 l+7ywkPwem5s32Y8SXN1WqQBQSiQAzwpvr8GbT8xKc34cNkIUSzH8hI8sEV/FQbR3ZQS
 tB0tk6E2Xd+p0gfJfCog/NT1wglXhgNeeWAKxnLQTroOnHsn5nV3Q1YqiUeYp4TWxkQH
 cbbsC35zFo3gz0sMSpAO+ztAUO31myKa0wD+2K8xsnwKndUrb3Q08QqqZGm5etiin4uC
 muaw==
X-Gm-Message-State: APjAAAWRYHiZbUGzwMtO3cXkK4whjRwFr/s7nEoxW3Y0sEIDfgjDma2n
 BG5J/EoGfcukLZRlyVlnV9weaM/YVwg=
X-Google-Smtp-Source: APXvYqwI3eWWyueDP4440efgnd3++fnbBLQTpl1IPEi3C/1cstR+2GButY7RxBF0w8xKKdx0KTeJgA==
X-Received: by 2002:a63:f448:: with SMTP id p8mr33151444pgk.50.1557157958097; 
 Mon, 06 May 2019 08:52:38 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id q5sm17055045pfb.51.2019.05.06.08.52.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 08:52:36 -0700 (PDT)
Subject: Re: [PATCH] nvme-loop: Fix race between completions and shutdown
To: Keith Busch <kbusch@kernel.org>
References: <20190506145203.2851-1-minwoo.im.dev@gmail.com>
 <20190506145327.GA2164@localhost.localdomain>
 <0db7e312-0ff2-45f2-8ee1-7ad7b6fd3e5a@gmail.com>
 <20190506151727.GB2164@localhost.localdomain>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <1ced3919-af4a-7899-8d49-026b9cc82e2b@gmail.com>
Date: Tue, 7 May 2019 00:52:34 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506151727.GB2164@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_085238_944180_93186FEB 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Minwoo Im <minwoo.im@samsung.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/7/19 12:17 AM, Keith Busch wrote:
> On Tue, May 07, 2019 at 12:07:47AM +0900, Minwoo Im wrote:
>>
>> If don't mind, can I ask how can blk_mq_tagset_busy_iter() make sure that no
>> more requests are coming into this request_queue during this iteration ?
> 
> If a queue is frozen, there can't be any allocated tags, so calling
> blk_mq_tagset_busy_iter for such a queue is a no-op.
> 
> I'm not sure you actually want to freeze in this path though. That may
> block forever if a request needs to be requeued.
> 

Keith,

I think it's possible to happen in nvme-pci also.  When a CPU is 
handling a request completed with nvme_complete_rq(), the controller 
reset by sysfs can occur.  In this case, blk_mq_tagset_busy_iter() will 
iterate over the requests allocated in nvme_dev_disable().

Does nvme-pci host driver handle this kind of situation ?

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
