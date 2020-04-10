Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570841A42D3
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Apr 2020 09:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BvgQn0msDgkMikMFIFxLY8cyVcwbLOAos8lsHGvdIl4=; b=EP9cuanf5S3rTzf1l76RuCpUF
	DF1WyxL828fKAYkcN8NyjMHQjw79gcijYDwlZ5NXT7S4OZtJbpeEiz5aAi8XYPMLPdcUgEnmmpZcD
	FyWcz0k+Kz456CObkFE0CCdZgf5I7elyUri39NMTsGgNkmfpTRvcq9tT2hSknSMA8dg7abMXyef7H
	6BuJosrGug8MDOxOnqTUDPMF/WzWkNo8DADA1cTr7dP+eR41OqqOQV80lM5Y76lh4jGet8dOLB1Tq
	Rv2Tk2M1PHGtq4oYNmOiKlwec3tTrypP4mDR4R59TkEFGrFFnHvALqJSGR47q4tdQQmqVa9kKgklg
	Ub93qgNdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMnr6-0000lC-Fs; Fri, 10 Apr 2020 07:13:36 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMnr2-0000kh-5s
 for linux-nvme@lists.infradead.org; Fri, 10 Apr 2020 07:13:33 +0000
Received: by mail-wm1-f65.google.com with SMTP id y24so1758257wma.4
 for <linux-nvme@lists.infradead.org>; Fri, 10 Apr 2020 00:13:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dMhUGobaUguKkxdfKG8uW8zZNB/WVxP+p4bebV4XHp4=;
 b=OVd+pxNn8TBvbihqsDO2/Y9wVIXBeMT022s2pxSOdGN64J4vHFLLFOixABZix9KaX5
 A2NKTnTLT8WaLnt0HfrmwdGY476tpDmiVkXuZ9nvEhq+japgDXa7faeQZSXCLXtFNfJ2
 DWz/hX8i5F54GWaiQ/bf5GYXsRw6cz7aSe9fYw51B8QSbxnI/hmusnQFqaUTVL/cIBhp
 xKUjainZaooSQrd6i1mKnItJ8vgi8KPerB7U0z+ll98RzEcvaYNVqqfnmvcuPptTE1+b
 VIv/bumxmPNt/uttFR5Mj5OpaZ0sHMxQcEZzwN0MbWA80PROZXEe+jjWCdQdJfxmN0/z
 q60Q==
X-Gm-Message-State: AGi0PubjWsIpr+hNE6cXR0dg9Ax36RWulNMrs5s76eERDoCx54Sn4/Yd
 9utk8t3So7T6NL7KnvRVThw=
X-Google-Smtp-Source: APiQypJnSL+nLRmvjk4XVBRMN8NFj6NZctGTOWZPXRSmLW9Y/jqTqCuEUt5xuOuK6sbzeWycwmAoAA==
X-Received: by 2002:a1c:4e16:: with SMTP id g22mr3554284wmh.157.1586502810725; 
 Fri, 10 Apr 2020 00:13:30 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:9052:1641:fbba:d9ee?
 ([2601:647:4802:9070:9052:1641:fbba:d9ee])
 by smtp.gmail.com with ESMTPSA id t11sm1685673wru.69.2020.04.10.00.13.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 00:13:29 -0700 (PDT)
Subject: Re: [PATCH 02/10] nvme: release namespace head reference on error
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200409160908.1889471-1-kbusch@kernel.org>
 <20200409160908.1889471-3-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f89facc2-0213-f9c0-ee50-79f6761ddef5@grimberg.me>
Date: Fri, 10 Apr 2020 00:13:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200409160908.1889471-3-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_001332_219634_F9060F46 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

Need a Fixes tag

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
