Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBAD9EC1A
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 17:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2zblZAqJ7stImSmY8fPeQLKj8xDtIMs9I9/BP2DJONU=; b=EabFIHY1ix1O8CMeTc0D/smVF
	9fT30EGBYafaYikTb5sVaeEzVwtwInAKqrNXcADuOdux26ygh7sGROSLB6ycYiwnGd7pjKEePDNzp
	Gjl61VorLW9EfrLRd0iuBnDOvsaN/PZEux+BL0dJFsUiynwkBmRrAKFu0bjluZI/3k4c12ON+BmVv
	JyDtvjfWKXRMv9i639+7ULKel2KCTxAROev6hubH2qYfELH8Gt0818PvXC2rABh49wKd5gysnm8H6
	vEAdVV7R96MFCE1uu3hw5P2qu2G8WtH2SWUYW+FtRKn05AG5+HhIEKQdUka890uXGjrvkh6Dpf7xQ
	obl9bxG2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2d8F-0003AU-O1; Tue, 27 Aug 2019 15:11:39 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d7P-0002Iy-2v
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 15:10:48 +0000
Received: by mail-pg1-f196.google.com with SMTP id u17so12849031pgi.6
 for <linux-nvme@lists.infradead.org>; Tue, 27 Aug 2019 08:10:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TLt4u7UGczeUqSMgyy+K1XoXpeQZCnRb2YnoO+BMfIo=;
 b=BpcRivsmFQeLFtcxXqK4QgFnhl9oCppuK0sbExHisH8CO7/050fsH2Hei0cTpZf6AL
 0IktNKxcjJo5lryTYPfsifOwLpSKgtjXLfEsxZpZ1zF0VJwVzWDNRmph34+8Zt2nb1zY
 U37l+NwShamS/5jPTIYojYc5rsiNF7soNlczOgxqmQ6+J0v7BD3+AGpKmHPs2Mxo/8a/
 afv/tD0HOL6pnsXKoSw81mEKtIadIa74Lf9fkaS4q0IonvEReUH7js5A3oQSqT8Mmft9
 iyePv4ZMI4+xg8MpvpbGDJ14elrVFwvJcCRu+5fqXMOKU1NRfZi/HKgSvAioFPTpBCff
 7/qQ==
X-Gm-Message-State: APjAAAVH5P+IDKFc3MAMTceFeld3YtM0plUl7CszVc69jBI1E6s5+NaR
 oBPhoxwkcNN8oaOqUcux45U=
X-Google-Smtp-Source: APXvYqyRLYTthx4jSSdw9WJK4sOVCArZyAET+t7jAdAauE0E/bhuVVphUQWChzR4Qx0djZAgygaw/w==
X-Received: by 2002:a17:90a:3b4f:: with SMTP id
 t15mr26738525pjf.45.1566918645076; 
 Tue, 27 Aug 2019 08:10:45 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id j11sm3174223pjb.11.2019.08.27.08.10.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Aug 2019 08:10:44 -0700 (PDT)
Subject: Re: [PATCH 3/4] nvme: pci: pass IRQF_RESCURE_THREAD to
 request_threaded_irq
To: Ming Lei <ming.lei@redhat.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-4-ming.lei@redhat.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <7cdb9dbb-46e5-b66a-ddf1-c7ecceb28d7a@acm.org>
Date: Tue, 27 Aug 2019 08:10:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827085344.30799-4-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_081047_134504_AE0EEE0D 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Ingo Molnar <mingo@redhat.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/27/19 1:53 AM, Ming Lei wrote:
> If one vector is spread on several CPUs, usually the interrupt is only
> handled on one of these CPUs.

Is that perhaps a limitation of x86 interrupt handling hardware? See 
also the description of physical and logical destination mode of the 
local APIC in the Intel documentation.

Does that limitation also apply to other platforms than x86?

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
