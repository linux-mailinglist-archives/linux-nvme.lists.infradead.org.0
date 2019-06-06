Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324D737A2D
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 18:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Enh1BbyGsM/0IGEsCubkGn6WWuqi6vJ6zrHmhL4RnBo=; b=RTu/Rrbg6+P/Wv53cbGi1ErnK
	r1g/76PHycVqsKW9SB+j1fzS8VfpDn25G3SfJ35qYdbt3iOpMKrQCZGvOHACp3uletOL/3o1/krRJ
	skkXwc+t7PsMtsSDaISLpDZtf8VFqHNLIkcWDXSh8bcicBjpEM7Rzz3c9Av3K4GBJevL8/QWnoyA5
	DNZWZeaZJ1z0UDKiSugrFiPO7z5nD6nulK+jkU4dXDRzgSWP3dPK07nEuWj2tK4U2lwF57QWnWJW/
	GRg1QZ+Wn/2tKMDdlMr7uGYTebRKlCIhjbAffHdFdZk5Ukl2Gy6i461onqTT3IVuqEO0MB/i55Nv2
	aoj7o4Dqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvek-0004Oc-5b; Thu, 06 Jun 2019 16:54:26 +0000
Received: from mail-pf1-f174.google.com ([209.85.210.174])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYved-0004Lw-RB
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 16:54:21 +0000
Received: by mail-pf1-f174.google.com with SMTP id j2so1864675pfe.6
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 09:54:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+Tn1UI5iq23uX7FXerv625YY3aUa18muJngZAW7A9qc=;
 b=iu5qURCbqUDETBA5WUOxmfUYHto4ey800ebCUlbasGoZA0+ZfJvN2mQwRe2nHJa9Hy
 aCnLchHvp1HJpOMzhHpT6oRw/MCs+Tdm0ik6Fy7MaBdRzm+fDoZSnca40FYlTqFdsZcN
 OU6X4+ZU3ppYA3YbAW/jTrsfCSOUnN2GUpsvw+eXufYUtRH6y56wwty5Ub1cUfBMQ5/H
 YOC03gmoE3xKz7OdCKW27pB5IaeIuoIqmPlopeex7Ere8nqbrOGPCJKHqFmI5pTY/ocQ
 0tCWRfk/wG0fgn3E9JNKWPIBZ1sbLLX6LwgQ95SfujrBXBPOVNbcWTGPGqE8wiVe8qem
 DIlg==
X-Gm-Message-State: APjAAAWloI0YPqkrSs5kXilSnnO+CrVMc71oBaZnuduPdhSPxTzEtB4i
 Un+vBqs0iBaJM56M/kOZyn8=
X-Google-Smtp-Source: APXvYqzXp4Yc+x1AL0dO6CI2qqMqok9VxRxi5YOTN/QkW+lc84D0m7o0C+Eiosqz3cd+qBhE9AO15A==
X-Received: by 2002:a17:90a:a785:: with SMTP id f5mr845508pjq.4.1559840058447; 
 Thu, 06 Jun 2019 09:54:18 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id o20sm2102663pgj.70.2019.06.06.09.54.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 09:54:17 -0700 (PDT)
Subject: Re: [PATCH v2 1/1] nvme-rdma: use dynamic dma mapping per command
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 james.r.harris@intel.com, hch@lst.de
References: <1559813256-12370-1-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <37e7cf03-489e-9794-e6be-1f400bb372fc@grimberg.me>
Date: Thu, 6 Jun 2019 09:54:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559813256-12370-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_095419_887960_9C0F6348 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: israelr@mellanox.com, alex@zadara.com, shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme-5.2-rc-next

Thanks

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
