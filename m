Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF931C7A9
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 13:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D5erBE+KqbW6SAE5eDr6EIIcf1C1yJhPrc4CgGHIM+Y=; b=qzdeFLCNF5yBtp+SfZILboQah
	qUtlF41b7poaDZ7+tLwf+YxIPQcTIWoX7WSyk1yRAW4YTJ8oetaCJenE8VevgQxVVoNpjsXPrOT6N
	PyzX2jmwHj9/HT7s11OW7+AHegPvpL7VzhdjK5JtJIwwpQtVa9wTBf9e90m0WT+bqBBOXDhi62aMs
	BfEbdVIzDzXmAGMYjFzQhVCArT6/z4whnbe5sU7YmSd2gwShQjWVdkDQl72acJNwYDnFnLt53F3B/
	kL5sqRwgP5fCPmRUdDe9O6ugCKehdhaSlfrvDE/cSb5kvERHO5Gu0xdLwGg5XdRCNLp6W1w283vKA
	XkhCH3NDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQVSO-00023m-Ui; Tue, 14 May 2019 11:18:52 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQVSJ-000221-6i
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 11:18:48 +0000
Received: by mail-wr1-f67.google.com with SMTP id w12so18771246wrp.2
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 04:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Jpo9QzihaOnyKgEgs8vkql0tJRQVGYiXPHrT0wCpm70=;
 b=uSgApcVdu8vf1rMfgECO2Wcjiciy2qZKgs8jGZt5mNkFfyp5R1T/NkI6Ra2n4ignB1
 tHMT65ZXNOw3hnet5YzEjWjcq+LPxMiasBIWolBFai6xbnfGfeKRf0wfw6KViTHvvUHQ
 Tw0VPjxId3diEp70//wek6r93qf/qzhKJ2jSgGVd3vpMttQySD5VtZi4vsYXg8dbD1an
 ovf3VudCbFARk41VI+r9ARxAqizjG1P5ygGEX500H8rv0Q3VL0e0B7tMdA7VS4OWpT5R
 Ebosmet87aPFrbB5IHYHwIe7r+BREWBu6KO3pUvaIDt7j2LnvcfIUTSXqPARhxfU3sjI
 Vzsw==
X-Gm-Message-State: APjAAAV6FEwI4RtiByL4OOlXKh6VKGF6QC/pul9ZamSKF/61IM4UyPMf
 RQxmim+F9cUIZMiEl8OQ4tq45Wh+
X-Google-Smtp-Source: APXvYqzf50SOVzMN7KnurP8UB0Bpzq2regaaGrhE3A70nVprArykyhNm0yRS2V27nkHx6V0LsFJQyA==
X-Received: by 2002:adf:cf05:: with SMTP id o5mr5544273wrj.262.1557832723025; 
 Tue, 14 May 2019 04:18:43 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id w185sm2330682wma.39.2019.05.14.04.18.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 04:18:42 -0700 (PDT)
Subject: Re: [PATCH] nvme-rdma: remove redundant reference between ib_device
 and tagset
To: Max Gurtovoy <maxg@mellanox.com>, hch@lst.de,
 linux-nvme@lists.infradead.org
References: <1557139675-2469-1-git-send-email-maxg@mellanox.com>
 <c162fcdf-9ae5-93bb-e1f2-5179acef3083@grimberg.me>
 <16c44835-dfc6-81b3-9d80-04571cdb19fb@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f4d7bb75-166a-fb0a-1f67-9afe029f6d50@grimberg.me>
Date: Tue, 14 May 2019 04:18:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <16c44835-dfc6-81b3-9d80-04571cdb19fb@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_041847_248201_10801D09 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: israelr@mellanox.com, dmilburn@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> This looks good max.
>>
>> On 5/6/19 3:47 AM, Max Gurtovoy wrote:
>>> In the past, before adding f41725bb ("nvme-rdma: Use mr pool") commit,
>>> we needed a reference on the ib_device as long as the tagset
>>> was alive, as the MRs in the request structures needed a valid 
>>> ib_device.
>>> Now, we allocate/deallocate MR pool per QP and consume on demand.
>>>
>>> Also remove nvme_rdma_free_tagset function and use blk_mq_free_tag_set
>>> instead, as it unneeded anymore.
>>>
>>> This commit also fixes a memory leakage and possible segmentation fault.
>>> When configuring the system with NIC teaming (aka bonding)
>>
>> Question, what about sqe dma mappings? don't they need to be remapped as
>> well?
> 
> 
> Yes, I'm looking into the block layer to find a function that does 
> exit_request for each hctx and init_request for each hctx..

Once upon of time there was a .reinit_request handler, but was removed
at some point...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
