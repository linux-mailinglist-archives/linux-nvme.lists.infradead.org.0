Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBD55EFC4
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 01:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=S078xwEsMx0lCQDvrcYw7kte1
	TLlxPbJcGxp0G5eMnYiCMf3p6NJ9wMVYuMVMcYQTLnsTLd0NH4oCjn9GfUrQZFDbk/Nmyac48W8x1
	dETbzrMKjRY5CuhBk0tzuEld4ldyThDSpBwGwxU/b67SbYgdJ44uRZS2aqxuSSMum91azU2X/f96E
	hndJrHW5eNDgKkK36ZagjHh4DuJhB6AiBc2eGOfaaLxuGKdC/A2jXBYvhbJavheAKQ9+26U93czck
	5IaYw/U1YUeIAAWxeAve9uRhIVY7y7ntx4PcAo7X5Qs0w6OZ6YQoPdYOnIYcWj2us59QsWMGFT2gU
	/g1KpJHUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hip0d-0007ff-PV; Wed, 03 Jul 2019 23:49:55 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hip0O-0007bU-QA
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 23:49:42 +0000
Received: by mail-oi1-f181.google.com with SMTP id w7so3531107oic.3
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jul 2019 16:49:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=q8f0D1VdZtiksOiwwNA7cMg+jUpIKoV4I1okWGglCu68MQuo9caRjgWCyB9+qb7tGs
 xZFLbWOOZ78vayY6QFUEPuU4eRPZN5PHjqz4FWebPeyvfxxY7nc6fA4QPg41sBFMMnGz
 z91YsQWexsnM6yUGafRee5o43qbw70EQ06R2UAGzOuaiEeZZ+oo0xaP39c42SitcefkX
 mYQEv8kJ99b1L8LjB+tKDcGz3Vs6Um9pGOCHW2b61n3mH0d8YeKwV00/sGNB8XL+zc+l
 dp/vnmcVsIDL9Oe50+SPpWwE1Gm5Nb+zRyQ5LGNOmnWp/UEOJ0kt22nuynghzMdSZxA4
 PhDg==
X-Gm-Message-State: APjAAAWAp/S6r080Ud0VRtxjtd2PXMhn6t68YlEQ5Txg0wnl8jfw//qV
 a2t9UnoNGgIQLzlnEQ7X0XHidvMW
X-Google-Smtp-Source: APXvYqwRjZGgQdv1gBF/qPQaeqqTknjYw1knpnjJc0FbK3DbELJLE2T8hCPFY+bZjLS0aVudaXh0MA==
X-Received: by 2002:aca:fd4e:: with SMTP id b75mr153998oii.129.1562197779924; 
 Wed, 03 Jul 2019 16:49:39 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 198sm1398677oie.13.2019.07.03.16.49.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 16:49:39 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] nvmet-loop: Flush nvme_delete_wq when removing the
 port
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
References: <20190703230304.22905-1-logang@deltatee.com>
 <20190703230304.22905-3-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3a3976b9-3d67-b9d4-69c2-6ba61c3da953@grimberg.me>
Date: Wed, 3 Jul 2019 16:49:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703230304.22905-3-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_164941_014197_AB7466F1 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
