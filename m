Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E46C3013E
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 19:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6CNOkKhDMdBPrpBFg6uNu2+Uc03ajxi+t+9AKGLLW0E=; b=XiVzIUN1Fy0SSGOCYkUqOsCbx
	uO9PswJjBpLGW3IU7WXX5IqCYBsifdqg2J07rUshMldDwa0QDQ5dyVLrObKpH8IYMwPpdBnB5c24X
	yYcV8ky/AIM2b4YV+lTcYWVM7k4IFyVqm/Vudk92uyoaxZjRV5Np6ETnvxt76X47C3mSZ46IrJifd
	tcm1zyzqweO0auODyIz0R/jvnBMrrqvqDoe/7W2o5xHOXy8diDuLttGYUXVZoMGNlcRNMvTO5AW78
	3cZrrEkE2pyvlvbsS3+6QFf/NiQZyf2PJ+eIdFfzgUNB0AuYTJ81qwL9v6M4ufEfDqx7WvIDZ/3Me
	Wyxx68zrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWPDa-0000kg-SO; Thu, 30 May 2019 17:51:58 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWPDS-0000dN-E0
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 17:51:52 +0000
Received: by mail-oi1-f195.google.com with SMTP id r136so5630999oie.7
 for <linux-nvme@lists.infradead.org>; Thu, 30 May 2019 10:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mqFTEcpZORqM/uhPr08b+H6sGbUJFxx9TCTYmYfm3uo=;
 b=lej0mmSKTnsAD277tL6cX2aUhU2xi+FLd2EdKPB5HrdGpJkOd5sB1BYW/YplorbddC
 WjtGVlbC53dsDtZgcc3BVzqSYfyNUClLjWAowUU3n8EwhWRttVajE8rjvPu9ed1Qfkpk
 78KbFKZ8UCm0MeZgp9ZIRpf1iOjiqsoPI918QjVEsEvdw1ezMHIbKWPWavcb7LIllJBg
 HHFffy/gh9UfgN/xvp4zxGO4xkHHTVwfNm7nKBHT6Z3K0Tp6iaeOwK2vvOfxbyPHDRdj
 d1R+JMKA+3gOM2prikDYAXew2hgvvDJ0m8TO2RgsNd16oXnc9faaH+XFnkV1d5pxmB2f
 mG1Q==
X-Gm-Message-State: APjAAAU6l8bGbYyZdtDqagCh6Ny9AG8Gjj5/UIJFAT2RQ+CTN3pjOCDW
 PmxGMRJW1aSrDOh2wFH7bw0=
X-Google-Smtp-Source: APXvYqxOJxDyMyPyzljR3abCKcQPYx5D7VdiroerIXPtXr1Em1S2rF8jlStVA1UqXyIaQPkYWQeDow==
X-Received: by 2002:aca:61c6:: with SMTP id v189mr1661510oib.126.1559238707496; 
 Thu, 30 May 2019 10:51:47 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id f5sm1150254oto.67.2019.05.30.10.51.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 10:51:46 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvme: update list-ns nsid option
To: Max Gurtovoy <maxg@mellanox.com>, kbusch@kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5c140526-482c-a92b-9183-761963ffc9bc@grimberg.me>
Date: Thu, 30 May 2019 10:51:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559209406-713-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_105150_661222_4178CACC 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shlomin@mellanox.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Next time please add nvme-cli prefix to the patch set

For the series:
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
