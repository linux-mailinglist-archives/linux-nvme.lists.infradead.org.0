Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E2934C92
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 17:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9YanRbWSrHSfMq9Xo7j4NPjAq9Ye46LfxTOMP9EeVoc=; b=JfSfXVQi066ASuZkTDqBlc57c
	/rb21OnWloV6ok7vXF8ynrmRTPCuosdqNogZ5MuTYwwURxoTSYNxJr2xtTwoml1U8Dr5PXxEJRq/V
	QYF6QXik/HxboaB0xmVZ9TMExcoUFN3u7H/mBI8Bi8IPGnCn3a01Sg1MCJL4DrqcYJNMZ0osm7xKP
	PJgeejBVZUofrOYXIMsqjbue6MSs/Tj23by53vM+Lo9Au0Ar3yB6jt8Ym74Hsr9lkX6K9bDeK7nik
	zOQbM3sRLbUvRzGQqk+f2r27qVgKg5nLr95yDwWaZGUt77UHC6WZ5M76zrOO/iMCCEJxB9ClTvWYq
	edQ2+qnGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBfM-0006Vo-7U; Tue, 04 Jun 2019 15:48:00 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBfE-0006VR-UQ
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 15:47:54 +0000
Received: by mail-pl1-f195.google.com with SMTP id cl9so3401308plb.10
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 08:47:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=60k4bwk3zjMUmZC+IoBtMhwCmQXlInj5Ll9TAblFF8I=;
 b=icGuT4W8UoOI+xPNtemF3aIC5rWhV1ztpcBUiJoGQUjwO3adGfya9RChv8RMHU4qLf
 ubXKVEJlg8XRAQt4aZ9hnxx5GPDV+4SVjee51O+AHuX0xo21TtG+yILeRHPNckIlQSgD
 ic3J0lTRkh/hQQzeK/Sf3zojvti5tEbWPZ0waf+U9yoKcPMtfe37K2XrEZ9tfjMYyYCQ
 o8cLpgL7LRajlIGTbBlmMawlz1lqFVuPkYNYdhjKhoclB9UGZfY2BiSJY+A+pgAgNaAi
 xIcEvKvnYNB4qiIOxv28KdLNYfBp/al6UCoUFx/4OwNXGBnPLO94XNzw2wPavqJQgD1y
 3mZQ==
X-Gm-Message-State: APjAAAXpg/AQbl5NjZRUec8NVUrwOEFMhpuPi8rLvUwWUQt5pb6kuhlY
 ZCO1MbnEXHLatS9KOQorbD0=
X-Google-Smtp-Source: APXvYqzaH8Qysr2JR3vnEaQ074sG4T7fwMpaU3aditg5pgAK2Inof0ra3IOHqzeOasdgCt84GIelMQ==
X-Received: by 2002:a17:902:24d:: with SMTP id
 71mr38537823plc.166.1559663271439; 
 Tue, 04 Jun 2019 08:47:51 -0700 (PDT)
Received: from [10.8.0.6] (162-195-240-247.lightspeed.sntcca.sbcglobal.net.
 [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id b8sm343432pfr.93.2019.06.04.08.47.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 08:47:50 -0700 (PDT)
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
To: Max Gurtovoy <maxg@mellanox.com>,
 "Harris, James R" <james.r.harris@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <251f83e0-75f1-ef0b-2747-8ae09f038ce8@grimberg.me>
Date: Tue, 4 Jun 2019 08:47:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_084752_981161_5AFFEC7E 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> James,
> 
> can you test the attached patch (without the revert) ?

Max, I think that its pretty late for this change for 5.2,
I'm leaning towards reverting the offending patch for 5.2-rc and
getting this into 5.3

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
