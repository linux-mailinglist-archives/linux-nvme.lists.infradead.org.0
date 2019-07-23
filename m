Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF7171046
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 05:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hr11hJVT2i1IhGpvqgtddIVLtewJ8xxV93jeY29HfKc=; b=QnVBgfOozK1lqmksyXbNsthPQ
	T1c7lOSIPX1NrSJDBc7s0IqzUIIFKDG7oxatakWZGexp1m/drxWSIWeqnn/IBCCS5LPmc/CNtH2db
	ysqcfaeq1Gz1RKNqwPRd0staKg7Pk6FcKPg+/GsM1fVsig2dFJkpIDf6Xn6AxOdeHMQnfKFwLr3Bc
	Fd2psAQsRMMDgChuT7qnFHJ6Q9OUYkCBAi5f7Yq/u7RP0KZBcSE9FML4q8fyG/291hib8A0SfHQP3
	xrMjdAnNlsg1shPlcKoM8+uvllOrWY0mE7Oc+4pXGKXYHC/tq9L69S4F4txUl5sDvwZbMEaLLwqIb
	c/g6Qyd+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hplwS-00055M-Lq; Tue, 23 Jul 2019 03:58:20 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hplw4-0004ya-Df
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 03:57:57 +0000
Received: by mail-pl1-f194.google.com with SMTP id y8so20045034plr.12
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 20:57:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7hb3wIxrUr8nM8yJ07nZDaCmMWSuCNThWrqMfiGLCnQ=;
 b=r+N0LKsyTLHGhfvaEWLI9/Qhk6nmDAKrwEjmJJ0cK6A0m1heeUHCdqTfye0yiNzhot
 kl7Kg+Ntc0/VRU0EqZ2cS+asyvbRooP6tWjLvXcodrC/IOCoTm768bXxU3ELS0yQb9jG
 9JGnk7wYUDkFW3RNlD6HKP8rf4ud9XvSwwIVquWD4YSh5xDI2uoNpziDmGG87H7y4H4P
 Rd+hkZ5W5KxU0KK7i6G8j0zfeo23bNzgMC1GlNos8t6qRsOkLRfQhktry0C7/uu28adZ
 RJVamZFz78eGw7lNJQgeAZXNTZ9gbVmcG1PHDu8SP26SqsUtu/coUhN+svYXxso5wMID
 HgQQ==
X-Gm-Message-State: APjAAAXk54TixhZDmVRpPqIwjyTd1IKAsTcSROPVksC2qoZrEWQ71zCg
 vn6tuVfTfCmXix/3HSBob5w=
X-Google-Smtp-Source: APXvYqy71xXIMMRDiKWSrLTtyRUGofPyPsZxYU0nibW3mLMCtTcP9+BNGTMsbPjCL7AFbkWteq69Yw==
X-Received: by 2002:a17:902:86:: with SMTP id
 a6mr79632035pla.244.1563854273421; 
 Mon, 22 Jul 2019 20:57:53 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id z63sm6608503pfb.98.2019.07.22.20.57.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 20:57:52 -0700 (PDT)
Subject: Re: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-11-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4efefb70-7ab1-69af-4f41-63223e9f4ff8@grimberg.me>
Date: Mon, 22 Jul 2019 20:57:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190719225305.11397-11-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_205756_569955_BAFEF506 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +# Events from persistent discovery controllers or nvme-fc transport events
> +ACTION=="change", SUBSYSTEM=="nvme", ENV{NVME_EVENT}=="discovery",\
> +  ENV{NVME_CTRL_NAME}=="*", ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
> +  ENV{NVME_TRSVCID}=="*", ENV{NVME_HOST_TRADDR}=="*", \
> +  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--device=$env{NVME_CTRL_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"

James, shouldn't this be /bin/systemctl?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
