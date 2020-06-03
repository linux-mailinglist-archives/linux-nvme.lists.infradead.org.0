Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BF81ED744
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jun 2020 22:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IHbz5TsTvJ24+NreIoD2kdPVlU1/5C9bS81twgn8APU=; b=AI9sGuGTHjO5TVakAQiMNp4Vn
	u5FO+qefNXU5pjbOtakhGRScPI7/DHbVxuHYmG3syWW/IEBja2ojC+exAxbAFs9YOVUKf3Zznfkp3
	7/0ODHZPa7zX+PpOad+NSyHACbkA+C6sZ5EvjlWUbcKk5XuwPQBFFGxLDkv/k9YJlEbhXlrc5/0lx
	ZCGvWKK/LpVW0nixuSluN/Gygyb9+OMQbbO7SleCVqbxabC7Ran6I2QWr0Tqdc2jxSR/J4wYH6OMH
	6RMfIt3ER8TtqVYbcOaLKFyJP/CW7n57ZEtbQnlg0NYlDKr/WETr7eFwdhlgwxQ3AkRO1g3rNyYri
	qQhPUmxDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZsp-00041x-Tv; Wed, 03 Jun 2020 20:21:07 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZsk-000410-Uu
 for linux-nvme@lists.infradead.org; Wed, 03 Jun 2020 20:21:04 +0000
Received: by mail-pl1-f195.google.com with SMTP id m7so1211846plt.5
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jun 2020 13:21:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+KhrMhcJSvItbb/04gtqwcqQ9SN2qd7j6u0HCMyKS6E=;
 b=Rtg2SNgjyg+WWpTylVrZsSEMGyK8vVAR7T0c8JFspRancF4tEYvrAePr7vKqYYtYMS
 Fym6A0fzhjFVyP/jSRrD2z1JFBkcKWoiMAdG4ae4K0D/MHPNeQe7xsNrg4OaeKRvjtO6
 FGMU72Y0s9Wwr9z4UotUDZI8Y3dC5NOyl49iG516U0UXG6QWex6ZzBjtzbhK2AbzkODi
 wzuQXGKhcLnHdCvg137QXhojm7fo4KPPSdvv5LPnvemKtOdMq6RexuSYZjnQPj73WCSC
 HHwOGIRYhpwP1TtIMBXMPnuqM1AZvw6gEAoo8wbVZtCaB0RzjaHAwFL7YNQ39hoX+NCs
 IL2Q==
X-Gm-Message-State: AOAM531MIVlL6rUBjl1KzahZSzubkqIj33UB/Xv97U2EB/fi1ELdj7Lh
 7o8mQCGZZANEEOsRQ6/Xup4=
X-Google-Smtp-Source: ABdhPJxVJ6fKvvQLHhYWVAMYD7pVSO/io0/PxaM9nu1B0AvOKXyI09cS3qhkXjSHQzhZaT5FsY6wCA==
X-Received: by 2002:a17:902:e9d2:: with SMTP id
 18mr1538395plk.56.1591215661730; 
 Wed, 03 Jun 2020 13:21:01 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5409:1488:6d95:bdff?
 ([2601:647:4802:9070:5409:1488:6d95:bdff])
 by smtp.gmail.com with ESMTPSA id s18sm2536776pfm.90.2020.06.03.13.20.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 13:21:00 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvmet-tcp: constify static struct nvmet_fabrics_ops
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <20200601170520.15207-1-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8b4e296b-7978-e5a8-e391-94bc8bfe2657@grimberg.me>
Date: Wed, 3 Jun 2020 13:20:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200601170520.15207-1-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_132102_994401_003BCA3B 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
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
Cc: israelr@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Acked-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
