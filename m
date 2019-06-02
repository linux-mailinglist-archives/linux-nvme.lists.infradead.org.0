Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118DB32275
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 09:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TpNPu4islYErluPAcFeUrtR5AjkofViArVqF5PN55JQ=; b=OxwEpbLPAaAqKdxhGLjLSu6CV
	fo+DO5jyMVIkBuJN0JZezCRInvP5YNhQ9Q+5Y0CetA/f03UqQPmF296cliUVLy4MMSmBeiQ7VluAm
	XPjn8+eiBHNsCD9wpcy6dMnXExTga9Zof6UOPValcMWpczuyA1JOHWHZTMZeqgWnaMaiVS+89ynlL
	K8MoUJ7mJRgTnaqAqROuU8/WMllZYH1hw3dMU4lPsehhJM+w5KHaZn6YO+Smix5qME8nvjTkpzwRY
	RPJMkX9opOdmu9c72Q2MiHArrmU/Tncyu3lUGNhXo6RR9xeElWpOqRM8XXB/2znr2J2/WZmONle8I
	f8PN6RIpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXKz6-0002SX-9g; Sun, 02 Jun 2019 07:32:52 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXKz1-0002S8-Px
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 07:32:48 +0000
Received: by mail-pf1-f193.google.com with SMTP id c14so6338198pfi.1
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 00:32:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zQ05asotCnq7kwRDqDXouMIxV/pPZT5s1OLyIqPfaSo=;
 b=tUdcK1LSXIgV3QPhpp9A7CFZey/c2f2RsrCFLxLTR/rgj7Agoe64my5glBQsigJ1Eh
 SnyM2zcJ6AZzv4GaqMUtb6dzkE+o9gCkxjIg+oJw0gSTzuqLZIcFkdQz3ytfIDQNV0ch
 8ubN7/Uec4mIIOxGo3YC9axYkUWY5o+pYtyawMw1o2/SZTkgcKaK27SXeQNxyoqhDq2K
 Y09RvjHD2jlWhFOuhJaeNB54JzoRCcOJXlGf5DfqaMSYTvF6C1y2UMI9mGh3QfODLsOJ
 W0htOtgVmuim7AYXK7KfZ7Yt0/4Nl251XHwY+ytBX48N2h7GEVsMXKmgESGYlDzPUZ8L
 B+jw==
X-Gm-Message-State: APjAAAUCbje8dV6T5ci05wfxdSQQ0n4Gro8hsm3YTJeHH3dOmyHW/Tc8
 DpH+UIFevrg2BqhjD2K4Gts=
X-Google-Smtp-Source: APXvYqwVt9sMrP6L1nYjEmitd9fEZJZfrCps/9R2P9zBApikL7LU8i0lQqWI3Q9q7TBheImbSbkKOw==
X-Received: by 2002:a17:90a:26af:: with SMTP id
 m44mr21801404pje.57.1559460766341; 
 Sun, 02 Jun 2019 00:32:46 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id o15sm13995900pfh.53.2019.06.02.00.32.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 00:32:45 -0700 (PDT)
Subject: Re: [PATCH] nvmet: fix data_len to 0 for bdev-backed write_zeroes
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190602034339.11246-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <69cfebd4-1e32-b86e-b02d-a92566f9d2db@grimberg.me>
Date: Sun, 2 Jun 2019 00:32:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190602034339.11246-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_003247_839887_13389458 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Is this a regression? IIRC write-zeros used to work...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
