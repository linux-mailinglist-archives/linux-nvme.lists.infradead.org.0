Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14998B9668
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 19:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YtETx/vi7HrMAubCpRlOEfp86sM3qVHt2QlOtRHqWts=; b=nvgD+ve8QTRyS+ti2JFxsa/O6
	fCNRU8bsgqSe78QYozBPRKZnKwxwnBzpDwXqV+J97CO8S7b6BSEaEH9yJQmjTgj+GuSE5XKprA3CO
	/duG/ivOtxLZDICNz66iKsKK+jybpP5SRJkJUlCNsVj+roYqxeNjYHHrXBvl2hkRoX2TRlx9uis+N
	qok4xzxCUUZ9oSta0WqJpAzmJB9ywgxF755clhtVpavjum8j+TpwxbFMMPI/nTFtUBNe3tRykLiIe
	Pat9n3LYWP+F2w6beXzL3/Bb4vCMr4o7Cpl5Z4k93SDXs9Rwlz8zEaL1fQxHj2nM76OgNEMy6dELr
	bytputfqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMVu-0001x7-EV; Fri, 20 Sep 2019 17:16:10 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMVq-0001wY-2d
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 17:16:07 +0000
Received: by mail-wm1-f67.google.com with SMTP id p7so3301875wmp.4
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 10:16:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YR0zbmZklabsj9m40RWWGNVwYGCuiC00vlKIfOS7/Yg=;
 b=uaxvBA8xOL1II4QIxsoqOzKFG73gTAlzND+5+sXyiFaxsps2W4OgYfZqcOlLpzYR/I
 yVID5ssvRqrNAdy6fg2C+N/Hye8CspT0M8hW5N7ytdvD+V8nNUh75TJpFUm4dJyRTe5g
 G9OJ6Ec2zOi7FnzaIyf2RNY6gSf9ZOLT2zY/Gle+6DK4jsTJ68/CSSEZC//DK74/cKw+
 i690dn7MBsAeKHx0jM2o2/d3V5t0fjaYREr3mTw1P9lAIO/kK2cRgDjeu8ZbGNWh+WTx
 JYHDIj9KqtGHRQ6BGIdyIwqVbKpnunw65ED91XSudb9ef80WLBr58TpsfupOoMF52KnI
 IlWg==
X-Gm-Message-State: APjAAAXOE5WLRSvRQrdWt35hFACwbC1CAJBJ7qfBP1OIxNNfFLUHGdFo
 F0iL14DGTUDjk68ijtA/Dks=
X-Google-Smtp-Source: APXvYqwfAHY19VaoaQAnHnGDPRz5ft1lXcuguBb35DPLUuKeg8GEac2U2iHOsXrH9BA5Vu3rISUzoA==
X-Received: by 2002:a1c:a851:: with SMTP id r78mr4221372wme.166.1568999764570; 
 Fri, 20 Sep 2019 10:16:04 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t203sm3366541wmf.42.2019.09.20.10.16.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 10:16:03 -0700 (PDT)
Subject: Re: [PATCH v2] nvme-pci: Save PCI state before putting drive into
 deepest state
To: Mario Limonciello <mario.limonciello@dell.com>,
 Keith Busch <kbusch@kernel.org>
References: <1568830555-11531-1-git-send-email-mario.limonciello@dell.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <90d1915d-a8e7-5a48-6f00-62060988de4a@grimberg.me>
Date: Fri, 20 Sep 2019 10:16:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568830555-11531-1-git-send-email-mario.limonciello@dell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_101606_122568_20DD5F59 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: Crag Wang <Crag.Wang@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Keith, can we get a review from you for this?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
