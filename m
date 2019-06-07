Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB36B391C2
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUQUDdsmef2g0oLl94+axBxfEPZ0dSqPoukS7wrVqu0=; b=lcbBoc6F80SfvT
	9qcDLM5I3GN2XtJYaW8O7glXrh9xyMrh11TgMAMrWhoXdV9nJzqa4iOhPjEkmXs0dMI8NhaSfpqWt
	gTRDTYGC/y9X6epTU9skfz5CAIKTAY9+WkQGRYjBwgtTNjdoN+mN78FW75EVD8Jd2vgJfy8OFL6wg
	ZGzZA0GfzMmF4T3Koiqm+ybvKm5Zcuig2698JUfDJ8BfXcxHsxyWUKTPVJ81X2s+LlKN7EurjTG4g
	wKjjsCKvAaiw6bdmfrPvwkbWefsu9tT4cdoGIJjEMRjSeGmaO1pgM4khG/u2mIpTuareqp+RZILwS
	z8BciKdoZqvJFYLvChJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHaJ-0005FR-KA; Fri, 07 Jun 2019 16:19:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHaF-0005F2-3a
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:19:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so2714654wrw.13
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 09:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QLYFhCBlTFecqoI8ue6ayHI59AWpi0+HR6mVYkRqz98=;
 b=mphLlEuZ21mILNo3Ujwa0flUFHknEIuqxN9j/9cuzAFNK/V5++paH4k+fZe9KtNiRi
 dBPHylJuKnhy5C6xgOn5Zi+BAlWLGOe7xqxIV1YMYTvX2mEcPip6qUhclaVduQDSHMWs
 nhtmLp/Ac9Hk8hBYinUxOp52sgD0DfQs6NBzo04WcZIn9B3KoOJKk2hiZzCYDnVwkXrP
 mQS/Ye30GBmOs3yjTR6rn14L3S5RHJWTgnFhaRpy8/AtbK8soEP8CGeOopmIY561u5jl
 K4OrAynTrg6PyRfWgADXN6ZVayYqFTMEtn/OestSAgJgYAmV+zp3WTAuxhb3EwEfC2+I
 Qhag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QLYFhCBlTFecqoI8ue6ayHI59AWpi0+HR6mVYkRqz98=;
 b=af7yjmX3adLRvLz4wzr5/vVq0wB6/kkYUTkoRk95GRY3791HNPSwOhb3+x7nOb2jaO
 3L5RCofmoAzPIXunlyIBudDIzysZkiVPq4IaGywlcnTEzo9IFU54d26905Icho0OgcOM
 VkPjGUZSTTqPggzSaEtV5AQ8HoRpkmMLOCbED13xY38CJHQ5mYPrn25Xh/pCXAC9GChH
 SQ6erpbIVasedhkuemBO/WCjddt8fZ7UGskzf42BcRqdRZVgvzSi9eYhQcsSW4mmag0L
 NYtE9r2FQww1otuufoOYa8NtQ6WSLwF7M28oi3PFWkS036OPeWOE+S/4OPJyLYdFrbAI
 +ZTg==
X-Gm-Message-State: APjAAAWz1ogysTpH/RovqL5MUzCMIMpVEXnLGgudc3wJjZszS8W0Atio
 j/tf1EuMou2n1LaK4VQWfYIyWgpGJ2gTd3XGib6WqK2D
X-Google-Smtp-Source: APXvYqz528mbK0mMUk7tnnXLuDu40v/gl/gDfev/YLhsHhzxFy2WKFX0GHuIKmH7p449eiLbrcAAxBjS7QQrs9MjHg8=
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr34777728wrw.306.1559924352721; 
 Fri, 07 Jun 2019 09:19:12 -0700 (PDT)
MIME-Version: 1.0
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
In-Reply-To: <1559209406-713-1-git-send-email-maxg@mellanox.com>
From: Keith Busch <keith.busch@gmail.com>
Date: Fri, 7 Jun 2019 10:19:01 -0600
Message-ID: <CAOSXXT5tZa_hoybxbQRpYuOmQKki7gDCA7jcc4a4hfmDiJxp+Q@mail.gmail.com>
Subject: Re: [PATCH 1/5] nvme: update list-ns nsid option
To: Max Gurtovoy <maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_091915_175001_4CF65EE9 
X-CRM114-Status: UNSURE (   4.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme <linux-nvme@lists.infradead.org>, shlomin@mellanox.com,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 minwoo.im@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I've applied the entire series. Thanks, Max!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
