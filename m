Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F058A5727C
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hZwy4VwvTwP1KnX+S/Zy2KYidSS9jg7qqddNKue49jg=; b=QchWnsGHA6BRi9hcIHHY2zSdf
	THw8tQFKASvc6R+10IvT5KlfnFSvALdmIdrgNJWdwtBXHoRGa2/RyLivjq5L/s0HleryypQcVC2FR
	5U3c9Vco5NHn3tH2JK+jIZIAbWa0YHUX5TvIh8bxL0RqXIFyH47LX9nGeM9b3eW4ViWkBArkhkNPv
	0YctJnwjUL9TyhiGlcF/kg8UffRC66DbqrbCQIoULOQWCRNoNStb8i2WU9K/P8HyFqyBo7Vc9pVKk
	VYZG7OZ+IYAAXLxNcb2pZNTf50zHhog7HqGbYBvCn2kZtvcNJi/CsRMU1gqkA4nvVjALk5MQv+W38
	sC/+lI8CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgERf-0004lc-VR; Wed, 26 Jun 2019 20:23:08 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgERT-0004l4-PT
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:23:00 +0000
Received: by mail-ot1-f68.google.com with SMTP id j19so3919735otq.2
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 13:22:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Sh4wbBNWMnlBH0zd89rm2MGNcaBLdD9y3jL2J10jR5g=;
 b=PJYutaI5KxgUVO13OU+jU6Cn2a0WK7DFd2DayUOLc0azHNmiNJpLwZ0HwdUrBXouqr
 n8uQtLDzTwLEd4IWMwT0krKUhrkXXlEzx8tPM7m1QXz5Mn4ypiLfpvm6WDwZfWbYZnsA
 SXB3XmxMAdYYBT48RN2aKa8YTkn138il+tm/vaOUROQpS/AJUp67bUAMJ2hRF3mRsu0D
 vKTD+45fNRieiZS6H2sfaPicEq4tFjg3RrQhn5Jk6/81rvwsodQDoQkfP0VER6hFm44G
 yfyRvObPi+9HHl93Wy1MQy0venxFZ5OuSx0ry7vUrnyrd/UOHgLHuAbtaYfVQ1TnsPUE
 TrUg==
X-Gm-Message-State: APjAAAUn003uiISxNYPghozMwkxOQE6/NR/hvhP9Mm2BaWcy8j0e/D7g
 EBegufvf+roMlqHPzt79WqtBiASr
X-Google-Smtp-Source: APXvYqw76PST95/2A3D4FiAdSzN6Ug02ydW/HaFB0T1dVaj0xncnIJCD3HsddJr3OnbPLaiSw5+Qdw==
X-Received: by 2002:a9d:5787:: with SMTP id q7mr130846oth.75.1561580574376;
 Wed, 26 Jun 2019 13:22:54 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 12sm10465otn.23.2019.06.26.13.22.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 13:22:53 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Hannes Reinecke <hare@suse.de>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
 <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
 <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
 <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
 <ff13e243-da8f-f04c-d31b-f7c46d3a4375@suse.de>
 <960997d6-9ce3-5730-00e6-5b2639502eaa@grimberg.me>
 <04a61807-ed2c-c91a-6eeb-c3df864fedc4@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c73a67c6-719a-78a8-98b0-5679d08a115f@grimberg.me>
Date: Wed, 26 Jun 2019 13:22:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <04a61807-ed2c-c91a-6eeb-c3df864fedc4@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_132259_171749_968C35D5 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hmm. Not sure if that is sufficient, though.
> We do issue several I/O in the course of nvme_revalidate_disk(), and as 
> we're running fully asynchronous here the disk might be removed at any 
> given time. Cf the above stack trace; we're getting an error for the 
> _second_ I/O (nvme_identify_ns is issuing I/O, too, but went through 
> without errors).

Its not protecting against the I/O, but rather against queue freeze.

> So if we were to go that route we'd need to protect each and every I/O 
> with that test.

Why?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
