Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B047829132
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 08:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vxmaArPRv3dJ4WMjsTJN8NJctAdRfQWoEW3gEPXCMMs=; b=Jbs+IyOR/6qW+NBbndXfCrMAQ
	oOh+tO4TwfyjEbazzEgXyr2vz5UESiAMb27hI4tZMq1tR81YDXqks8kHRoyssTMtNddWhuW+l85oF
	yQC9orJDiGf6HNZ9ud6cKzvOCpOrsDcO9nRB7tLbCTZCpPdZ40lu0eJVTD32gzZteKdnTXgbQVCbr
	GRKUidCcNQLzy0KFymPPScyAtTKcgC9ZZ1oPmQcfxqeRz3joAAGERJ+IHauFNuGIG45Q8L1rj+Xr7
	TmMMkAZJ45irSg1gIlWfdu2NyrH1juMB7BXDOUQNLUcKD9R01lVZo3HTeMARyulv+qLs4L9xFUFgo
	Uekf5eV/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3xW-00022c-8m; Fri, 24 May 2019 06:45:42 +0000
Received: from mail-pf1-f173.google.com ([209.85.210.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3xM-0001u5-CU
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 06:45:35 +0000
Received: by mail-pf1-f173.google.com with SMTP id r22so1846649pfh.9
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 23:45:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5GyZAD7E5hMs5AH/Tr7UILT+Lwk2ZyzwNIzIZROyIDs=;
 b=gWMSQUsYRsP6lp2zrZF//QTyTo2M3uWCJCBFkzuhp8JIPgGaWSV0YPCoUHHjU9UFPE
 jUOhDlADcPXKM/yJJ+3IXgFd1EUzxw2Mcg5R49S8Bt0vm2wHFjEMHkxclqM0BlMV0uTp
 0PYwJbTplh0oG9HO0yp7svM9AzzqwyXr7lkt++xkLLa04/1m6AuZnGK37yUTlLjC0zik
 jGNxgLzjFsD6JjishBf/NxSP24EBaKwIsNOx8Sg6m9pfHIu12k5wmVqOxCRxc0P4TkMi
 unFbrwM5NtnMvQdX4CU+SJmBn1sApP6lJAI0N21hqnf6c3fucKfuson2H7ws3nUMw50h
 MPnQ==
X-Gm-Message-State: APjAAAV+/8tNI9tIMhlL2m9Zg7oRk5vXIv7rc15hRh8+h842lSwTwj8+
 9LbDwkcynCtj9zet5Gq3jPPCfilr
X-Google-Smtp-Source: APXvYqyOb8dAJ/XesXSRnIWpft9c6rm+zZBd0/Fw5NSw3uNjc2ZS03TsvXYKp6dIKf0q4JKBr4EYsA==
X-Received: by 2002:a65:624f:: with SMTP id
 q15mr103344436pgv.436.1558680330726; 
 Thu, 23 May 2019 23:45:30 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id u2sm1226323pjv.30.2019.05.23.23.45.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 23:45:29 -0700 (PDT)
Subject: Re: [RFC PATCH] nvme: Ignore timeouts while a PCIe reset is pending
To: Keith Busch <kbusch@kernel.org>, Kenneth Heitke <kenneth.heitke@intel.com>
References: <20190522003741.26755-1-kenneth.heitke@intel.com>
 <20190522192656.GB5486@localhost.localdomain>
 <20190522200918.GC5486@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e01d7206-dc2c-b3cf-548a-4cb5ffc5bd19@grimberg.me>
Date: Thu, 23 May 2019 23:45:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522200918.GC5486@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_234532_801333_4DE8E502 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.173 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Keith,

> I think we should do the above anyway, but it isn't going to help if
> commands dispatched outside disabling timeout. This should fix that.
> Note, we never needed to have a sync'ed reset on reset_done(), but
> this makes it necessary.

With async reset on reset_done() what guarantees that nvme_dev_disable
does not run concurrently with another context of nvme_reset_work? both
mangle with the same queues assuming that they are not running
concurrently.

quick archive browse got me to:
http://lists.infradead.org/pipermail/linux-nvme/2017-December/014599.html

discussion on my patch, but I think that it was a side effect from
ming's tests..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
