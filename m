Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B4979C94
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 00:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=ffyE54lT4cFmw4UPWCaQQ7XR6
	c74w8UzLPgCwFG4tAXLpeYeUWtYnbv8v/btgx+rx1rMIap9G4hcHcFZs6SUiakxYF7AhTJ0ObdPDx
	aJ3BeK9TLAab3ZqFIg+mk+Lg0+lYToASl+E65VVyM0UmWWM3LtvYHePcpOvRVdNoM8YOlEHRppNE3
	uzsq6bGgg0FCboj5QRQDS2T/bNo0isrQtMqGCJiWJyN4zBTsJsVLGy/HVU77aCcMfS92pkBfHO0fx
	ljPE95zu+3FABtu4a1BLp3oIFg3TNqgFWFozQEQuXb5TT4t83qlSNAE9WVE3a1EOjRX1A06ZFA7bq
	BlApBZMBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsEc7-0001Pu-1r; Mon, 29 Jul 2019 22:59:31 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsEc0-0001Pa-24
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 22:59:25 +0000
Received: by mail-oi1-f196.google.com with SMTP id q4so17350509oij.3
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 15:59:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=S70pr5y0kenb14GbQ4tQIoe847OcEGg5ytc0YqtjB0Qx1VFmahMjB0zpZmeOyzadtY
 pdBAXx8GkG6KZj7d4r8o1aioiXFHg78r9pygJLVWID4ze6asHEtOPqj3pvR+UUVS2U23
 yPnB8HlxpONjCJmnvFeP2JrGdBT620zqeKE3wBg6pzKlyfhWfOQzY6jlejXj6DGnUUut
 EC2/D/fLAdGzRUmf/XaV/PMt/nLAu/NBP06H4h9alnisst/B0E/xT1Sq5ZEILZSIX/0E
 06TIwCRD3VASDrp8lv6zkKB4Q1+9PuMxM/5boLAI8gnGc1kRrdz5vFMszd8VEXyItZY4
 SgRw==
X-Gm-Message-State: APjAAAXcaZHyYBSnb4yk22C520fc1uDPjr+67pZTqg2qGCH5p7wiOAnZ
 +i6AyNlTwsW1m7toFI3TbVM=
X-Google-Smtp-Source: APXvYqwEDTjUYcsviUfjAPjniQfYmLnje/TSnkbssj+Da1mSOcfKc7GhnD7Q5e+TXmu8c9DCeJFFPA==
X-Received: by 2002:aca:7585:: with SMTP id q127mr3054480oic.113.1564441163075; 
 Mon, 29 Jul 2019 15:59:23 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id w9sm21107296otk.16.2019.07.29.15.59.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 15:59:22 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: Fix async probe remove race
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
References: <20190729223452.12967-1-keith.busch@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4e575a6e-44ed-def3-23fa-6c3d89f3fde3@grimberg.me>
Date: Mon, 29 Jul 2019 15:59:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729223452.12967-1-keith.busch@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_155924_103037_769E05CE 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>, lizhongfs@gmail.com,
 Minwoo Im <minwoo.im.dev@gmail.com>, Bart Van Assche <bvanassche@acm.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
