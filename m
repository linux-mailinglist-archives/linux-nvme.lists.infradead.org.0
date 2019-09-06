Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E19AC32A
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Sep 2019 01:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EQz1La848bOysQWY992Gg3PunGttih6HJCZB7/qmTII=; b=dwnsV38XdzeV2XeHWcvlXFGft
	YB2GzAfEX8hI4TCCeS7IfTm/PgYvLWN4nc3flmIDhmVYU6SfrVQqqTniwLR5DuMB9J/jpUamwhYHN
	+cq00lIoxtPMl68SNNJKlehymD0i3q0Mjcx6hAWWtyuW+yXmd6/TRtL6MlSzM86KIz/J+csBapcsL
	hLgN+/t2D2eZAx76PxxXJrU0G+gjOsCFjK/Podh3Fsbs6skR/RB1SyD0NVdk/pt3VXkY7MYifXQnY
	0naXp/530EZ+FSseh2zDP82zkBZn0NfsxHZ5VDbpJER4fWBP02to7zDe6xgtHDNRKeVeqwz7wE/21
	Iv3SiEGIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Nlh-0005Q6-8Q; Fri, 06 Sep 2019 23:35:53 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6NlY-0005PX-Dz
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 23:35:45 +0000
Received: by mail-oi1-f196.google.com with SMTP id x7so6388849oie.13
 for <linux-nvme@lists.infradead.org>; Fri, 06 Sep 2019 16:35:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Bqc8r4QnNhGzuFCtcpr9C9RP+toRp2ji4H218PlHbjs=;
 b=fAgt3NSntLNa/x50HSQskwCeyYNHMYWqpu0b7E2q9UFOcmqHBSEzwoV9lAn0lgAZZA
 fv5kDQem9YlQXG5jI7uhcPaLXGyUA2YNJghzcLeg0VGQY7GMi+FHEJzwNDo0Ik+fAC5m
 +gbkb8CWP+WbPBQvIjKaNXqdhUsyKzQHGZJArrYVdgumFEApnrkPf67b8TKDH+NzS/Bd
 VLICtgyssOE1X+quEbJlZjeKzuJC7Gy0Wn/RSFdLE5JXVM7xwWwBGfbMBLNgW/gWHvgm
 njCHNVnnKzxU9YMqnXX8YaioKzhkeQLFRDPPNvDSaaNwdqAPnGcpXPWT3PlVw7Vj2xNk
 +M4w==
X-Gm-Message-State: APjAAAVvXh15qKDU28QQCKuU7Rkc7PLeZLKkkHX1BSoHBOyGrqj19BC9
 GzamAiV7cx6TaFu9q0htr6Q=
X-Google-Smtp-Source: APXvYqySygkb5Z56juhBPVZxqqh4ZEW0zHL3wMtJwZ+n4FHDLpG/kAXIw2DFy1v3l6TiHbp3ZjfQ+w==
X-Received: by 2002:aca:db0b:: with SMTP id s11mr8875407oig.140.1567812943543; 
 Fri, 06 Sep 2019 16:35:43 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o1sm2203393oic.50.2019.09.06.16.35.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 16:35:42 -0700 (PDT)
Subject: Re: [PATCH v8 05/13] nvmet-passthru: update KConfig with config
 passthru option
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190828215429.4572-1-logang@deltatee.com>
 <20190828215429.4572-6-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d8ee32fa-df19-fe73-3365-bdf0cb841f26@grimberg.me>
Date: Fri, 6 Sep 2019 16:35:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828215429.4572-6-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_163544_473518_B2B21BC7 
X-CRM114-Status: GOOD (  10.43  )
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
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This can be squashed to the next patch. No need for a separate
patch to enable/disable code that only comes in a later patch.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
