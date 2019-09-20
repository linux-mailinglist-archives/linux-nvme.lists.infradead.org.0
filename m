Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D65DB9670
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 19:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7HPDbwYfiqD+wcZ3mPQxBLzgRcTAyjXKdTk8rVsdJPk=; b=BvUk/aJBgtc6RIg9T71VhUCtI
	KIQNh4952dpR23oBZ16UNED3lcdsCdClEId7ak+3V5vh2QJreHfygKTht+c6t6ff7YlGQ+ulganG/
	v3XZK4vTdhY/0sJNnMbwNAZNLMUazMA6TDFLOOMcQ7DNups/sd09H5I5S5kiwrLK4RLVa8zZVuaZr
	vlZ5TkwU+b7udkMrDuWbyqJFPHgc25bMCHkEjct1h3vbVsJ+e5tiIy+RnhvbIrb37wrBQO6FLMeJP
	rds27vDV9FqZIebjE+3zL8s7EfYvKY8vGVvJo41ZtRhOB6FADl6b2G/KRuZRRcyxbcU9SS9Dipcf5
	+35+2EI0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMYz-0002ch-EV; Fri, 20 Sep 2019 17:19:21 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMYu-0002by-Sb
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 17:19:18 +0000
Received: by mail-wm1-f67.google.com with SMTP id a6so3308830wma.5
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 10:19:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vavb/+DHWkFOg8h3dSKd6siqNcTjEK7RoRKkaP2/G70=;
 b=BnPtZZXUDg0ErIfjSEWndqj8Ucq4Z28rgnPcXDUKnYna/ZoyHUHA9rPUuxdpCmApcF
 kE3yc+0Vq69ew3HaLzf+PgycWzqfll9Jdz1vNwaeIWoujGkXfLTZ8S3LETnCQSXuSyrD
 kuTU1FOaLz9ie0ex/Xd45h9XCYhN1bOn05v2Iy9TAAna4GjiPn/XOfHZYgX7kQqZ++Lh
 2NEOxhDZsRf3YD44+63FL+etEHw79F1NcPsbjCLIl4FWaCgetgi87CAS0QGsB9rA9jW2
 DyUasq9gndOdDu9d55ib5Wf/BOLulBgZJfqtbJ9E8H528zM1OcP/WyEve2dRnDeCiMDP
 xJYw==
X-Gm-Message-State: APjAAAVSrnG33Y5Yz8LrGadFjSy8+5Twm6Dsg+PvdZUNNzdfCyEImS9u
 eR97MJxrFyDWEJqLjuFhb1Q=
X-Google-Smtp-Source: APXvYqxVHDXH7mowvGQqMWj2rvLAgF2B8bCJKrwkmLb3BtTeS5vGkZlJly8oct7+NTY7eEcUuws/iQ==
X-Received: by 2002:a05:600c:291c:: with SMTP id
 i28mr4115658wmd.98.1568999955636; 
 Fri, 20 Sep 2019 10:19:15 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t14sm2656022wrs.6.2019.09.20.10.19.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 10:19:15 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvme-rdma: Fix max_hw_sectors calculation
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 hch@lst.de
References: <1568815936-6257-1-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <115a92ed-d390-1a30-5d81-755fd3128ad4@grimberg.me>
Date: Fri, 20 Sep 2019 10:19:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568815936-6257-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_101916_918939_304D4876 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: keith.busch@intel.com, shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This doesn't apply on nvme-5.4,

can you please respin a patch that cleanly applies?

Thanks

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
