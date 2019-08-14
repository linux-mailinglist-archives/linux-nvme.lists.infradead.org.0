Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165588DDE1
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 21:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=frWjo+NrPsfoMMXq/xLbawKueSC0SdzxjRzKdxs3cWs=; b=ILNf0JgxpkDDChlL3PMA2g1Ir
	23WUMmb8gJU3ltY1zucaY2l5YcNaA3I9/0ny1qfXc9C1MEMg7dcBO1VDkrCnnBu9FNEavqnB5+B8f
	aEe/GEjIi9J0OqJ1W4TMbvHl0bj+1J+kvPH7OyiBJc5Ksf1jTuudUAvk1X10Hif/3TSAjU40gmS5Z
	Jb5XQIXy0Gc4onQQEGYitQVJZNcwM94bULXnuY7+rFYwQgNzcy1Zt4uYCegGtKLyRRrPtoWM+vi4R
	FMHEjzDxfE98wBnkdJ7R8ejBMnvxriLfDEJR2PYdlAPSEkvEUOemP23CmQxlCZVUg6UbkeURnGzXp
	bzDcVEylA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxyur-00019L-FY; Wed, 14 Aug 2019 19:26:37 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyuh-00018o-1N
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 19:26:28 +0000
Received: by mail-ot1-f44.google.com with SMTP id f17so674858otq.4
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 12:26:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pf1aHa+HA8zdtvnUqDaVWZWevKPDMWYFSyVoW4j9X00=;
 b=KhC9A33NUvDPVZYHfUJ12mF7weGc/+6I7TwGA3bZXtxNNEWh7COhew20vJUUHQp5e/
 xXxopfn0j9C9cTKziJBVr28vzpqvI/STG/xNJydgU823jzGd5FC3Hq1PDPt1UKlmx0V/
 Ujc/oVgmAnluT5X0TJRB4OwwOxJbksZ37lI+acgUItzTgrLLRECgN1sgFqT6en425+pv
 DI0P0kl/83MV78o7FWZciBHqQXQSqhukvT5zJ2qS0/Z/v/KfxZWO7jMjGYEexvCQx7wO
 EsV9f+B1BKjz9Zu9TfJYo603HURq+yRB7RdPsnD+2Qspiz9MQeEmKcnRFDX0kdU+xupx
 yXjg==
X-Gm-Message-State: APjAAAWk4Cav1nHTwm9zZshPWFwOKMa43Q2rOTTofqPec/EXWSpD8xJS
 o17yzmcL9f3o7WEKDQnSbeY=
X-Google-Smtp-Source: APXvYqzMhhPS8tiRICfmJM7C9DzQzfp2+sZqNN7gTKC2hV5rLLTKpRfd0iYTHzjSO+RD0sX7insnJA==
X-Received: by 2002:a9d:7d0d:: with SMTP id v13mr617129otn.153.1565810784959; 
 Wed, 14 Aug 2019 12:26:24 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id b19sm288042oie.34.2019.08.14.12.26.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 12:26:24 -0700 (PDT)
Subject: Re: [PATCH] nvme: Fix cntlid validation when not using NVMEoF
To: "Guilherme G. Piccoli" <gpiccoli@canonical.com>,
 linux-nvme@lists.infradead.org
References: <20190814142610.2164-1-gpiccoli@canonical.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <58533d94-1390-f21c-236a-d8f226499582@grimberg.me>
Date: Wed, 14 Aug 2019 12:26:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814142610.2164-1-gpiccoli@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_122627_083014_DAC651DA 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-block@vger.kernel.org, kbusch@kernel.org, axboe@fb.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks fine, wonder how this wasn't detected before
as this area was tested by Jon Derrick..

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
