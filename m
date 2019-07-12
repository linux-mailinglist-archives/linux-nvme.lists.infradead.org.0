Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05451674D0
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 19:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5YCkuNVAj4O4XP68V+gqKXfSqICQlp9Yx82fdrV7tFs=; b=NKxUQEczby2pR9+VKJof4kr1q
	VDMoct37ckJwZBBuaujmOvSNlydHtq0NnXC6KvIL6cFl3szPys3tMKIN1lQkNixwSOADyEUm45MbB
	+/entnIcyDm2l9OYaMAC+2JivZYNabo3M8EFJfWqPd6WsUUl2IpFGvo94HjM2aJNLYb03eu5sn6qt
	9qlnm0GJP+uPL3S+WSF+So+CvLU3oRYAodU43Ft0tgeHIfTgrEjA6fLj9eiivatrYsS47LFOiJNn8
	EEy5EMy8KCQJl1ZKIsf6U3SrDwYVyXiYGqdFSm/j/JpZu3aqQlav0h7msQXOefo79HmpCHrqYvD4c
	ogiQ80kKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzp3-0001P8-1a; Fri, 12 Jul 2019 17:59:05 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzot-0001Oh-GQ
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 17:58:57 +0000
Received: by mail-pf1-f195.google.com with SMTP id f17so633080pfn.6
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 10:58:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yI9p1Bxn0aST0p9Pd31OYyi/y8zGX3GVqz54LSbuhVY=;
 b=Mnvqph81t+kVFMcqRecmA52ey/aeZmf88OaiCiftpn0aOb87bjShv7+AYYvBLbfxl5
 b5J6jmkLU7whkmx7f1BxvbfmFs4tZdhKVvlA4WOvWzFLDvSON1si2ZNEZMLW7rRcM8Ty
 gQofXf+6+04pDpdiuhLJNnAaPflDrIUsiU8gsrd92wb2UNR9Y2CRBhR1SRLvG6IeyFxu
 isI5na4AvBZQaBZccYzCpwzWhCVTj8ivYCNsng7NnpjF/MVgtes5Shb34pIDz68MUjHH
 cUl+i18xTuMJXxAZfButIXqkDzb7c2tJni5JedBghv5k2mrHriRjctg4h4eGLT1O+Sef
 ieng==
X-Gm-Message-State: APjAAAWNZBrpU3IC+iNgs52DR+GpJl4uIAn51lnm6owE5mPge3O30cqo
 BRWEr2wlPn4scFG1yq8G1vc=
X-Google-Smtp-Source: APXvYqzGgSWNEg+uZueKSX3Nt4jHgwueu+n2q3NHz9KQptfv43aVb10RhBKvJMyELovtO+tCfdjLkw==
X-Received: by 2002:a17:90a:8a91:: with SMTP id
 x17mr13411296pjn.95.1562954334765; 
 Fri, 12 Jul 2019 10:58:54 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id a21sm11895596pfi.27.2019.07.12.10.58.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 10:58:54 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <9c08054d-751e-fdc0-4ea1-64cfa388e439@grimberg.me>
Date: Fri, 12 Jul 2019 10:58:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-11-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_105855_548279_1AA04144 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/Makefile b/Makefile
> index db594a3..4ea8b41 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -8,6 +8,10 @@ DESTDIR =
>   PREFIX ?= /usr/local
>   SYSCONFDIR = /etc
>   SBINDIR = $(PREFIX)/sbin
> +LIBDIR ?= /usr/lib
> +SYSTEMDDIR ?= $(LIBDIR)/systemd
> +UDEVDIR ?= $(LIBDIR)/udev

UDEVDIR needs to be built from $(SYSCONFDIR)/udev as LIBDIR might be
/usr/local/lib and udev doesn't look there.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
