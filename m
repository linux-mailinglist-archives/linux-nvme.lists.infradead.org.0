Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C8C8AFF9
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 08:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w2xxzRb3XaiGSAlhOh1DkBFzbjnm/766xjN/CN42yBg=; b=XRSoWykI25mGOEpYWsK5RyYc8
	u0OfG0aHRoXZLZ2SCfvjBK2tsEa0DOb3ikZ61ZKpGxH70CpIuRLdNIylyrGcreRqrB4uHRXPKmh+F
	z2WVFLJSs5m1SVObkfJlsaIba95MUG6UYW67y109HsnFhl1YBx4StZ3bo5dsfxg76t8SeXBe0YiMq
	SpuZ7kAG/4jptRA98I+27HRuzgYNN3s2MtO9aDLTE9XHb3CibXEAK4ZY0EQkIwUOV6NJGgNIceb4F
	fs71gcy/GN85I4LHfGwMAfvNPHdhLQTvaXopqAoKUEg1Y4URxCuuJirSYabiCaUq0M//VCAEYWSIK
	G6nVUMWfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQNJ-00025P-1l; Tue, 13 Aug 2019 06:33:41 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQMv-0001uu-80
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 06:33:18 +0000
Received: by mail-pf1-f194.google.com with SMTP id q139so2712844pfc.13
 for <linux-nvme@lists.infradead.org>; Mon, 12 Aug 2019 23:33:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jvh8HL3qOVmTLH33SUgDqGt+zJF/cjOxEem4Go1vFjs=;
 b=qKWT6NjiBXzGTZbuxlRAnqnC5kHnJk0A9u1qWGhJa6p1TPL8TDKGlyIz7oWmUy9WBd
 hJWNKFkZCnQ5FKQixNeLof1Etlr5PjvOmy5nFHFh83fISa+iocIpgKaIu2Gex+U34P/R
 0UAtnHxui5vpFhD+k+DG0VQ6E/dh1Nkp6nZB4XQvl1VVeN/URuFvbOjb0vBBZkjytmIp
 N50CHSf6nYetAKZi4+qCl5saJai3CqFm7tHfhxEWCn2oMr2lpOuqoUR6mr4+tGXm0wtE
 vycjRWdoYMh/qtCtoj+avPNXREpLI+x7yZ9WExROeGk/3HOY7Rv1u9N7LeIM7z/z0ZGx
 uMew==
X-Gm-Message-State: APjAAAUsvGtdRJAn3ycdGoOXZ2kVV4Fhuy1q1mxRR4KXVWbPs/c15/cz
 UKuZ2xH2Z+4oJrfmKqbcu4w=
X-Google-Smtp-Source: APXvYqxVismWBDitPx01fXsRFRAItCQFy14jQhAXhsX38VnHlM9ahNaoIQDuKlYKNNhCIyyR3N3Lcw==
X-Received: by 2002:aa7:84d4:: with SMTP id x20mr38994627pfn.60.1565677996726; 
 Mon, 12 Aug 2019 23:33:16 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id c199sm2179065pfb.28.2019.08.12.23.33.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 23:33:15 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvmet-tcp: fix possible NULL deref
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org
References: <20190808205522.24638-1-sagi@grimberg.me>
 <5bff9385-b853-4868-6f78-2b9611fc479d@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <541549b3-657d-7007-fddb-9df0ce26d95e@grimberg.me>
Date: Mon, 12 Aug 2019 23:33:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5bff9385-b853-4868-6f78-2b9611fc479d@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_233317_316074_5501704C 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> what about zeroing the sg_cnt during nvmet_tcp_get_cmd ?
> 
> and NULLify the cmd->req.sg as well in nvmet_tcp_get_cmd ?

Its set in nvmet_req_init()

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
