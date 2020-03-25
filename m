Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA03C192162
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Mar 2020 07:58:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xSJTTob78iv3BqyF2WxwsKtwtDDntmT5h/byssLwMak=; b=AGM/rfBaWXKJPJX5GhKgZKliT
	3zynkZ3vfNNuBLcdzC9526IS2VYZcoiGUy7HJkQzI6YxjtRZ/Zwwn5Mvu/ERTyzIMncQ5c0bjHWK7
	EXM9uMQTXpU1pVIB7DxnKj08WGxkjy/87iwUps4+useKnu8ZippJs0JerQOmD8ZPau4GLPg3J3Uyt
	OF28RQ3tpgkdT7kseQGDPL/AgCDuHbKQ9CwPxMZONXwQM0x0hZd+mB0v9NbXwSIhRYRe41UwwYX9l
	2XLAi6QYfOAruMbHt4UvF2xPwKsJdIQC6wwcGFnh7JnsPTY3NL0y60TYCuuYEeqzrLAG10lXJpxpb
	fDobUnJ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGzzP-0000ri-Ew; Wed, 25 Mar 2020 06:58:11 +0000
Received: from mail-pl1-f182.google.com ([209.85.214.182])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGzzK-0000rO-4b
 for linux-nvme@lists.infradead.org; Wed, 25 Mar 2020 06:58:07 +0000
Received: by mail-pl1-f182.google.com with SMTP id t16so438063plr.8
 for <linux-nvme@lists.infradead.org>; Tue, 24 Mar 2020 23:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mABfNB8iCfl+7fu5KKXolqHB8KTebvpPdSKC7hgpNY8=;
 b=NkojFsYcVfkZaBnmefWV1/jMAUNjupRApqFgGHRmjqWzVz43HpkYuReM4DnapyFurv
 K03KT3343fhGV99GXuLgdKUNMlRuW0kbaBcvYU2UvVBxPwCUvyG2ItUwxNDU7SoTcNNq
 PQ3FvJzchtQFMRgcMNBB0njmaOZVbyUwZ2qOjY4IGmJDVQrstaWuzPXbKvShpd3zo33K
 lyRbwdvJzu0+gEbSgYAfNTU8DRkm3NHB20Fm4kxSYh/RgHwfIpp14pvgK9O+xenxulwc
 2/lnh/A+nARaSE0Tap75ls8ITtuoKg3Zh2y3GwfBzCVbvnQ4UkCkVkP+QiXYiAIPEAtQ
 FFWA==
X-Gm-Message-State: ANhLgQ2/CvSKJURdzaRjcIESu8F68yFfzmyHSKmsrbRLe3AD4ZMURIyp
 M3sMKzZM6UNs4w2LmBh0CdDCCl/C
X-Google-Smtp-Source: ADFU+vt7Gcg6thBXw1mjjEi1IQtoQjPA92sj3ja+VhbASmVgOa9zLE84PBAXdgwOlrVtLTvvBPf6tQ==
X-Received: by 2002:a17:90a:ba93:: with SMTP id
 t19mr2013992pjr.67.1585119484419; 
 Tue, 24 Mar 2020 23:58:04 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:2c87:e6f8:1c11:1d73?
 ([2601:647:4802:9070:2c87:e6f8:1c11:1d73])
 by smtp.gmail.com with ESMTPSA id q19sm7022788pgn.93.2020.03.24.23.58.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 23:58:03 -0700 (PDT)
Subject: Re: nvmet and stable API
To: tasleson@redhat.com, linux-nvme@lists.infradead.org
References: <d4060208-ec69-3211-277c-d151be302555@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c89ef694-b447-5e2e-429c-bc449b3c57b4@grimberg.me>
Date: Tue, 24 Mar 2020 23:58:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d4060208-ec69-3211-277c-d151be302555@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_235806_180037_16BF83CA 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.182 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> With the existing functionality of nvmetcli in that you can
> save/restore/clear/ls and use interactively seems to indicate that if
> you want to programmaticlly change the state of targets that you need to
> use the python code that is available in nvmet which is used by the CLI.

nvmetcli needs to be backward compatible with kernels lacking
functionality. Anywhere this is not the case, its a bug and we need
to fix it.

>   Is this a correct assumption, that nvmet is an API for external python
> programs to use?

We don't have an API for python. I sort of assumed that this will
be contributed by the people that want/need it.

> The block tests in https://github.com/osandov/blktests.git seem to
> indicate that going straight to configfs is the API?

That's for dependency minimization.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
