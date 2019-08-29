Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30252A266D
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 20:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0xOo7vEeocTMHFkYMBPz8vBTiM7aGZFuV4PQAAi7OZQ=; b=KXjhOWz5V3UlC5Oe6/kVUt3Jr
	OU2LnfSrqvtsrMU3mas8AQjchGGnw+tu0pyOLUEcKZIzNmQgCLfHoTig9Gc6d2TrBYNKJ92xpkVcg
	Y5Ip1GcD3kDsUoVh0cI6SA1KjLGgybavEO9mtKdx0uPLu9j84kcH1t9p/HVSBQnamGZ73TEoNWf+s
	hCbCD32tAVPtWPlYJLU7YXwZotZduZRc1FqgTHcpC0FuWVCR5ZLmX0lZ1Ls/0Uho6PQioW0fX7Ply
	x/Jctb7w/GXOeqstHwz9VDW5J5lNfJU001fDACy9QGQDywx9e76AqCQjscjf7y6U2Ws1NMO5Xg2K4
	/ey5FvSpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3PUp-0003Er-KG; Thu, 29 Aug 2019 18:50:11 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PUg-0002WT-SH
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 18:50:04 +0000
Received: by mail-wr1-f67.google.com with SMTP id s18so4527355wrn.1
 for <linux-nvme@lists.infradead.org>; Thu, 29 Aug 2019 11:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5WcVitt+VPu3I8BSytzE6OFAMhihSz1g16zk+PNA/us=;
 b=bVWQLvoK2lQAFtNQaWIA1woC61eqMD5S5bo15X/DRsZOE96nsxfYvk3kDj6uD4wM2q
 IagggidT/ghTVQrjY5GlfLSwHl2banPl5vvnGXEKTMTHh2An6eIcQApjxdph0odWRnGN
 wtqP/3fhiX6BFYDen8DuTH9MhS3r5ehm7bpu2bFwj/dqPntpY4A3RI0zCpebtBK3Q96B
 FD2i/gUZMhbQgKfru5Mta0v6CmQaNwagX/hoFEJpPzwmDoJ7+NxnvXMmpf6kOR8HET3/
 BvgswPppykrz9VPtRJSDIvHB1hrM6PmM6pic2rcKtlJjv7iQyn2cUx+/814kTQUDA/Xz
 OlNg==
X-Gm-Message-State: APjAAAWZkpBhOCFAgVxleu0RfuRkRo/RdoP3VNdXLrWLejqooSSSBCbU
 DSLEhsBaN64+ipgtBZ0X6t9QuQf2
X-Google-Smtp-Source: APXvYqzKuMCX6Wb48Carmj8VPfsRffy7b8+NA69o8XDLy9noUEshrkZ5BdPFSYUVMQW+hG4b7FaJ9g==
X-Received: by 2002:adf:8043:: with SMTP id 61mr6750239wrk.115.1567104600746; 
 Thu, 29 Aug 2019 11:50:00 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v6sm8600347wma.24.2019.08.29.11.49.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 11:49:59 -0700 (PDT)
Subject: Re: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
To: "Engel, Amit" <Amit.Engel@Dell.com>, Christoph Hellwig <hch@infradead.org>
References: <20190821063711.1252-1-amit.engel@dell.com>
 <20190821234559.GB27887@infradead.org>
 <8739B0CD2FC2DC40AF691A1CCBB9896034606D14@MX302CL04.corp.emc.com>
 <8739B0CD2FC2DC40AF691A1CCBB9896034606E73@MX302CL04.corp.emc.com>
 <8739B0CD2FC2DC40AF691A1CCBB989603460714F@MX302CL04.corp.emc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <442e4fd6-0288-8da4-fec4-3e5ae6df5dae@grimberg.me>
Date: Thu, 29 Aug 2019 11:49:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8739B0CD2FC2DC40AF691A1CCBB989603460714F@MX302CL04.corp.emc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_115002_924446_B15DDE88 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi, Any update regarding my below fix proposal?

The patch is fine, but can you please update the commit
message,

First: the title should be:
nvmet: fix a wrong error status returned in error log page

And the message body needs to be:
When the command data_len cannot hold all the controller errors, we
should simply return as much errors as we can fit instead of failing
the command.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
