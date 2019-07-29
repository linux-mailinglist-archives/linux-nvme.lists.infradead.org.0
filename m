Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F25D7909D
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 18:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=awIRbGVCUdY5k4yF3P+ip7ypryNdpFb/jI/odcE/6CI=; b=gCdecwgUlfdDS8kli5ewFNmKw
	XWPLEUTZoLCvOX0xbKggssZSB2aYNKvnezH6hFYspyVE61VyJtDgW8PJQEM/jX8pUBNPRvi3OHXlR
	DkpoHapIXSa/Y3nkDJV3jj2yKiB04FG+GgyIStsnggb/gc1kN1DgDtKvAca5Q9xMtH0j1ZeAJspir
	XnAEYqH4ahC3PIiF8PfoHYdjgiyAya8Cmo/NeoqBqOWdLp4Yz7d4NimG0CJH+149YcqR4niiHgFrP
	OQMRMD1XZK7sZOclsOwOSh+17YjbuNDJK4S04RsYFoWOiXOQTygiDu6Ej8G0KkMpQJLpcFXpK1uE1
	pfWcmJKKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Lf-000325-3c; Mon, 29 Jul 2019 16:18:07 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8Ip-0001pc-EX
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 16:15:20 +0000
Received: by mail-pg1-f193.google.com with SMTP id r22so899986pgk.10
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 09:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2/uoNs6vHyO3yeTHZpt1irIA1A/s4WXB9GVkMSlWRRE=;
 b=sBfRwD6JMPpBr1t1jvzigANa2EcOOpwq4p5N0kPjlrXCzERGjMr2JdwrBGQZhhmybB
 MED2RcfJgPToMe56KCX1HsizZhlQmgcuKf80O/B9KlzBIQsclWjEo2/bANhV59Tqa6wA
 Fuh4hCT+T2v10VMQAV7W3wUIP2Xs0re0YzknVdJa3jKvDnEBJBHHUjiBNpFBMIFHTyEq
 GOE8Z0fIHNyfbJ3R2z/81KA0r45UFDs2q00cRB7KeMAGEqpVAUvQm6SRaTLh32JuYTkK
 LLYprC6kQEH/oysCBPpnOJbYAlKBHYmQwMN9YAvfJFmSQJkAIWy/NCKyQkDsJ8ggTSWw
 kOxA==
X-Gm-Message-State: APjAAAUBhcEx+b5NmOQeTpq+bUimOkltY+otrqr0DPCqsOgh9cVeo6bZ
 6xqKtL7Lea+syIGTHFs+XPM=
X-Google-Smtp-Source: APXvYqxvmRfMLtWjctTI+NBPENOugc0Re1KJKbTr0Q9VzZj2iX3jBmqvW9TdNQgLxS05uGk+p9MGBQ==
X-Received: by 2002:a17:90a:8985:: with SMTP id
 v5mr111210220pjn.136.1564416908477; 
 Mon, 29 Jul 2019 09:15:08 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:68b1:d8a0:b9e3:285e?
 ([2601:647:4800:973f:68b1:d8a0:b9e3:285e])
 by smtp.gmail.com with ESMTPSA id b36sm93895852pjc.16.2019.07.29.09.15.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 09:15:07 -0700 (PDT)
Subject: Re: [PATCH v6 00/16] nvmet: add target passthru commands support
To: Stephen Bates <sbates@raithlin.com>, Logan Gunthorpe
 <logang@deltatee.com>, Hannes Reinecke <hare@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <1f202de3-1122-f4a3-debd-0d169f545047@suse.de>
 <8fd8813f-f8e1-2139-13bf-b0635a03bc30@deltatee.com>
 <175fa142-4815-ee48-82a4-18eb411db1ae@grimberg.me>
 <76f617b9-1137-48b6-f10d-bfb1be2301df@deltatee.com>
 <e166c392-1548-f0bb-02bc-ced3dd85f301@grimberg.me>
 <1260e01c-6731-52f7-ae83-0b90e0345c68@deltatee.com>
 <6DF00EEF-5A9D-49C9-A27C-BE34E594D9A9@raithlin.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <322df1b1-dbba-2018-44da-c108336f8d55@grimberg.me>
Date: Mon, 29 Jul 2019 09:15:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6DF00EEF-5A9D-49C9-A27C-BE34E594D9A9@raithlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_091517_862046_65F2E3A7 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> This is different from multipath on say a multi-controller PCI device
>> and trying to expose both those controllers through passthru. this is
>> where the problems we are discussing come up.
> 
> I *think* there is some confusion. I *think* Sagi is talking about network multi-path (i.e. the ability for the host to connect to a controller on the target via two different network paths that fail-over as needed). I *think* Logan is talking about multi-port PCIe NVMe devices that allow namespaces to be accessed via more than one controller over PCIe (dual-port NVMe SSDs being the most obvious example of this today).

Yes, I was referring to fabrics multipathing which is somewhat
orthogonal to the backend pci multipathing (unless I'm missing
something).

>> But it's the multipath through different ports that
>>   seems important for fabrics. ie. If I have a host with a path through
>>   RDMA and a path through TCP they should both work and allow fail over.
> 
> Yes, or even two paths that are both RDMA or both TCP but which take a different path through the network from host to target.
> 
>> Our real-world use case is to support our PCI device which has a bunch
>> of vendor unique commands and isn't likely to support multiple
>> controllers in the foreseeable future.
> 
> I think solving passthru for single-port PCIe controllers would be a good start.

Me too.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
