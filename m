Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600EF36CB6
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1jEs7o7pPquh6OHcnzWjy9WA2MUVtksxndrS6LKV3Ek=; b=lfnYJ2VH+WkmPAWw5tpUSWS5V
	/me1Y26vfcJKixzsyZwgxOx0aWyF7o2vpcN+eVaDv4xAAkZdqpqgQPqOHFXYNK6Ag4UxLXQ443dor
	MZnBDSlQe+EkSc1rT9lhs/v/Y/rNTNfkrEH44D1psk5wY6jH0iVB6nwvEP5nVJfPhTEAgBK7ScVJE
	AIvKH2q7QcBYZfAYDbAAvocVWXoykYWPXXLFyXU6XeyDg3gbx2Ohh8tZ1aC3dlkKklEsWo1df5rf4
	D4/+M+CPJPjdDZonawJr6iunB2FDvcAEROtPY1/O+/h8hta9E40XWt9K/8wru2K0ADkvw3OWgaC6e
	Rat+UzZaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYmML-00049Q-EH; Thu, 06 Jun 2019 06:58:49 +0000
Received: from mail-pg1-f170.google.com ([209.85.215.170])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmME-00045F-R0
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:58:44 +0000
Received: by mail-pg1-f170.google.com with SMTP id f25so786794pgv.10
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 23:58:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iXnLd3+WmHVM4IKTKVjRFXO0aX0fOSH0Tz/owp8JaNA=;
 b=dxb+NGFDErnadML0wLav/jolvOxhHml3XFZU1+miXOyGFgTHChK/hVa8NJ3OnvsHnp
 rkSTxY0eS0nJefVjq66/zvb8GX3HUqKinMytMRp4KnwuaDv+MgFoGZf0Hn0+vzEmlMKE
 1yLN/kXcSJ+46hfI0XGvv/18Fc6UVBfi83Fni04eYakYH/UWmTUbHXb6Gkt5KKkmKcmy
 NiXLHVrxt8RasIFz27TAe0rmdIGdTk+BSO/AbGZA6qIb6KsBxzZUSvy8P5tgzs9fuAtX
 /yxmjkIFS5BG12YDNcY0o0c/paZfD4xtoGWc9UdVGaJcH8uGXsbPFSJHBbKgcxFni9Vm
 HBZw==
X-Gm-Message-State: APjAAAVJFxHPGKWRPR1s9ulGTmiJSgp1VlqoXuy4e/wTVwWUJLasteLm
 LiXGsMXhZMDOxyNP7KWuYj0=
X-Google-Smtp-Source: APXvYqymKNIIWTDOQTgfXxGygeVTtL0WTOsn1r53mwkeRVLfVjewctm6WJ0IsQPWqdJhHR2EeRESNA==
X-Received: by 2002:a17:90a:af8a:: with SMTP id
 w10mr50320403pjq.132.1559804321949; 
 Wed, 05 Jun 2019 23:58:41 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id t2sm930387pfh.166.2019.06.05.23.58.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 23:58:41 -0700 (PDT)
Subject: Re: [PATCH] nvme: introduce nvme_is_fabrics to check fabrics cmd
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190606053014.27240-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f6f956fd-e65e-c152-f505-555b917b8b26@grimberg.me>
Date: Wed, 5 Jun 2019 23:58:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606053014.27240-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_235842_894299_6822B535 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme-5.3

Thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
