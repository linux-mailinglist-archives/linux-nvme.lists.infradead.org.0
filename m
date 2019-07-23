Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8843D720CD
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 22:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=PMDfAYWnzQC03nHGG1Of5yQ/I
	f23rczIgNk+C0iQTowfuahRZ9AG+rFLFY+VVK5SS6sRWURVJLPB0hfbLtno/EV2Dt6sfjoF9aCs7O
	L6bcIszwxNJOse1L8JEhMWugzM12Fi5Wjn58/3rdCKxCEFhv/Xnd7TKfWO07l+lfxeA7yEb7aPA7U
	AhVlRT0i6x6yCP3tTIbh9u7f5GoUxeCK882djYFi6TP67fjwlru0NXzUkVNqXnLHCSSaj2kTKN1v2
	/SZ5d8cO6fhS+gxhqRx5k2B6voU/wBC21x2WZpwXeAka6TJ1O3BYFTZ6JU/KKVgm4XESRSjt+b34S
	xB8P+jKhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1QX-000220-Dz; Tue, 23 Jul 2019 20:30:25 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1QK-0001kt-9p
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 20:30:14 +0000
Received: by mail-oi1-f182.google.com with SMTP id 65so33307017oid.13
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 13:30:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=U0lfJZuCvV1lje1gwWZzvp4SuRLCAOWvEIq1KzF4dkac5xZ+dfFvHed0OYTnIAq6h5
 s8r3PgIu8kSGbTlu2nEjO3gPSfFZ8H88kdKELOnRE05BMSJe1rBgwmyonKGi4yBclJKM
 BHomrbCylBlA1KzAbBP+b714J32fvveJRRZBmKFiicJbZ9GF50XV9pAPCtkEJHFX4cr3
 Ah86CsOJN6d/G/eBbiKC7SGwV4KuVqe+aQ3ELXVx1xH5fw51WQvvaFoME4qUkrLHH486
 w4FFrIZ2r10uXv79d4y5CResDLMs/RXjQcOvRaFhD1NO6GlKWDKqxiZBjrQo7DA0m1NN
 Z15g==
X-Gm-Message-State: APjAAAX8vPPk21PiTEqOWYhcUT/v18fTJFX9KavNPH0fnv3C67G76D/2
 v8EZL4yPb4egnjcTuXNbQW8=
X-Google-Smtp-Source: APXvYqxzWe8VivJr5CR6E13uoAJOZHDgTWLgB63g5dYgmt13TMKDyyWmWGXn/CJhuCXRdMnRBId03w==
X-Received: by 2002:aca:6706:: with SMTP id z6mr2780173oix.43.1563913810785;
 Tue, 23 Jul 2019 13:30:10 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o23sm13907197oie.20.2019.07.23.13.30.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 13:30:10 -0700 (PDT)
Subject: Re: [PATCH 5/5] blk-mq: remove blk_mq_complete_request_sync
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-6-ming.lei@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1b92fcc7-fbee-cc87-d9b4-53262cbcd681@grimberg.me>
Date: Tue, 23 Jul 2019 13:30:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-6-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_133012_365489_1152634E 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TVD_SPACE_RATIO        No description available.
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
