Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268639885D
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S5kdOGcZZwFLSCi+FkxLcIiE+D/JOHnMnMHqjFdl9NA=; b=IfWOZ39CG2DaadiWHDmotW1CD
	cb0KG7Pp41eyeFVISUS5zAu8XuZXxRtcj/S4PQGfWpQNIms6pQnLqVUEp6tbsWr5afYgWRzHgs7Mi
	UPxRAtHRyGm1g+KKlcf8WjpWzsuNs3IUbok96xIbbzKfulP5BzTaBamcJt6oWnvDl+vqCH0lqBwXr
	RfXqgPnJftBXvgEWtBzGf2Az5eREisXOqtQQCqVsD7QMPGjmb5Nlbc+9GySn0Oscsg7H93Rjuvh9D
	ypceL79m/f16+qBbwC+6qgfc8vMAltaDWNoGTYiyrVcW11/PVAMhF6y2/mlV1b5TPgumEwC9ZBRFF
	hyxQvfYCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ahS-0002T3-VB; Thu, 22 Aug 2019 00:11:35 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ahO-0002Se-9C
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:11:31 +0000
Received: by mail-wr1-f65.google.com with SMTP id y8so3631725wrn.10
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 17:11:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cjwRDssZZXFHl9Fv6O1G/qa5oaZ9SjahNFrsyMg13/0=;
 b=PJNFMuYOu4OGTIUjWdbJzQkdjZDICMQw/uWeo6EZUSJikpjY3U2IiL1uv6JEaRxxGw
 KzH++/spsiOWuc/l3GG1RgBXPLwvE572IJtISsls8WOqlnhI42Sd22XcQiZ++EYRQzZU
 JVKWf3pBQ2Rp/lBf9MMY1hBGU5p4mQjHZdR6sl8MSfyvgi/Tiilesoyhi/wjWoXUa+c2
 F6F8Cyb5AXN9FrgQjsvVbmwdDAfQrdtdmK/+3VlWiQ1Fi1zTWHqm1DLa24NAEV+5Ak/+
 AbaTA/XcqnuFyfJC0vietavGmZ/1l9+zRswTW6xiLZrqr1vqUHUzWHv3sc1PrT/cbeJG
 7Yhw==
X-Gm-Message-State: APjAAAUWvFY74u5qPPE1ZyDfo3x/8rcQ+R4kEAYgV0/T6FKOiRuq4RLY
 j5QPjnpByLd6Ye50CY7pRNfXE5Rx
X-Google-Smtp-Source: APXvYqypk2SNqnj3pmNZwFC/oBxnfRBc0GBEVyw3NCVVgzL7bxiiVteOZeRJ0og59RLyggzT7VE+mw==
X-Received: by 2002:adf:fe85:: with SMTP id l5mr41012369wrr.5.1566432685882;
 Wed, 21 Aug 2019 17:11:25 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r17sm54691480wrg.93.2019.08.21.17.11.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 17:11:25 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
To: Christoph Hellwig <hch@lst.de>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
Date: Wed, 21 Aug 2019 17:11:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822000939.GG9511@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_171130_324018_20E1EDBB 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Btw, I also think we should probably pull the original patch
> from Hannes and just apply a clean one given that this is just queued
> up in nvme-5.4.

Thought about it too... I can fold it into Hannes patch.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
