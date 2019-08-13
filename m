Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FC68BED0
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=XytPMSkPcydEBqFralG3hRQbq
	RQJdtjKYFYWBFBk5uuSyoXXhXXlpZ01U28PoV9zi47+/NEXw69O7Uk0lgg8+ALO3joVAfocrxcCLQ
	Grv0Qp/BJG1Zu7kK/lapnRX6G62WWroyd64b9ZZyV+2ldneKzyopZX5FNuDZZ6gHCksEMgI3bJAaP
	5sk3swafJqqJv+oBmnD+bYvv8Qi2EzEp+QxS5khO85st55iZQ/DPndSR1087N9dmhOvaeV3EDnTLd
	J8Is69cuqcuU29758zVL3Zk4+xJsQFuKSk1NLDkXPE6yftubyY6dSq/wgT5W8ks8q/ohqDS7Nao5r
	hlGQZDhdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZqt-0000TW-QB; Tue, 13 Aug 2019 16:40:51 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZqf-0000Qk-0T
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:40:39 +0000
Received: by mail-ot1-f46.google.com with SMTP id f17so39592124otq.4
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=jscYnS/YkQ0SG8unsu4XqF/lh1MuRfSDdloyoZmrD2MaYbQbPeO0d91k1B4OSAZ3H3
 vgM0yNjs1/dh5+prj+/Bj+H+LjTfRRm0+Bb1y98aiWSbeirTGrgi0Ir8uXGEOPmTTYC6
 WjuzJeaWf1FvkIYMmM8eHXTpqk2iEdlWMEtGdEUIishixn6KYwhoHLzCIKd/33WDdr3t
 ou4h9D+DLXEg3PntFvip2B30TdKQsSqpASAe1ze4AUzRHd274ib4sUCskMYt0BPC/OQF
 Xfq2QfcXF4Cj1TRKT3zMJxUkRggrDdnNFL4iYo0ZPQYdgl0h4VTs738J4UuG1iLL2F8m
 M0IQ==
X-Gm-Message-State: APjAAAWyJYr0I9IOoH+B+KMijCtsEhL9JZ7vdsMdNRf1/fLrVMydz5Xc
 RQwkcrQvy1etNBQP8NgYHh4=
X-Google-Smtp-Source: APXvYqwKnHZ8ZbfA1yaG8EzvBLv8/UMDJSoQqriTKLLcorYOnbReXWYovHa+3NXmEObwh+FfbgDhQw==
X-Received: by 2002:a9d:4e97:: with SMTP id v23mr10220255otk.112.1565714436259; 
 Tue, 13 Aug 2019 09:40:36 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id i1sm35120400oie.45.2019.08.13.09.40.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 09:40:35 -0700 (PDT)
Subject: Re: [PATCH 2/5] nvme-rdma: Add TOS for rdma transport
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
 <1565702251-17198-4-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bbca18cc-ad30-464b-3b67-6e11f87fb525@grimberg.me>
Date: Tue, 13 Aug 2019 09:40:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565702251-17198-4-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_094037_196859_8C6722AE 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
