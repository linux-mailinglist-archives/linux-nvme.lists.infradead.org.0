Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFFF6BB9F
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 13:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01YfMX6FC13w4UeouzXK6Q3NiLqNte2E/fYmNImpdVw=; b=tTX5YrpOng23ym
	PHQGADNQtRtTkVUkZ1z+jhmiX1YTEWdyJFdXf26WJbblKtmYZTeTDcUFcYx70s7mt1kNCa7Nlq+vG
	YmFFa7G4auUgZuBJLddFaXDOMasX20M6ZIMhCeaAyhQaDCF/D5gVxERl/PRQzJR4fxOU6Dw0H/dgF
	olk5h0qOcl2Bd61u66jdhts9o5vyeH5hCU/5sm4Ho4aqdjeajTfTKDnH+YcdgALWkha7Ch3ZUqWrF
	HvHnsiOogBICM8LBkc3p8F8qnZn+AFZcqOtR+KbJgxgA8oNU5K/JjKxHjN4WG+uyXRfPjaX72Ju/A
	6rRCovFiapEFZDV+5JEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniL4-0004Fb-8h; Wed, 17 Jul 2019 11:43:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniKs-00043z-PB
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 11:43:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id s1so4735295pgr.2
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jul 2019 04:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r3Ml7V1jVOjpVicYo+8xmXVJRWMwMaKAxLz7i3aIxcU=;
 b=kLvx8Ql7yjMVtnXgT7lkSlJON5KotFThqQzMHYj4nuHJeYBPzo6EXiQOXgiTxxwMEE
 Oymy9XPr9/7c9loG+9vlkD6kgEnX33ofacYDsHBlUFQuBneI/6zkYyLHCPkd/t6jHJYD
 pU6z8ymfmGYydVRRlhtx3NqTEGVcAUT5J/JvRYpOfBR0Wb0Gt7b1VyS87s7SxWO984nl
 NbOuyqMZkp3i85laXYdgYEJiZ9HkVuEN9Wg5KlVc7fTNBiag1ffkn+GK9/ebcFope2LD
 HLpyEqVzZ/xQfViI/2btIeUgALqDKGOl4fQXCI9/YmYxaFUBL6E8tXK9t5MqhI6W5xhJ
 /+dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r3Ml7V1jVOjpVicYo+8xmXVJRWMwMaKAxLz7i3aIxcU=;
 b=nkhTvTMgncMvC4Z7kqgl3ulJX3r8YXUve4yr5GXK3w2NlJCPJNmhf42pJRmQnl736b
 QQHZ2uYFvC2DMyjhySNei1hGsGB1wyUT1mjHStqKw1F0EoTw6a1HB655h3qouYRZvo+D
 2LVEq5MRJh1wxWG1Yap6UN+iXYSSBk1siQujweGTGNSHHtQx1S9iyYj3TJDeBEn+f31P
 fp5tXGw0qu2Ui4VTeUIe5hY5k5l/vf4uWj1t/S4WMY0yQW7ml4bxd6VUfM/biHrWBA47
 nlZuoHEPgrODosW+RejZV0yycgCNu5hKHBHOYjrzKUjZd6oBOkqTLsxaSUM/EEtz4W7N
 q9vw==
X-Gm-Message-State: APjAAAU2W5Dwb6TxMCAE5hkb+rDmPSM+W/xOqzVvbwft6BbkIB7yhgDX
 mC48Q63TIqVobFHiVcYEBb0WqJW1Zxg=
X-Google-Smtp-Source: APXvYqwTOudt5MkKo1EUflsGLzGNhX/iJMR7JxKsdRYwmfSUNdnjQI/NYWp7wefj7l4DNGsZKFqOxA==
X-Received: by 2002:a17:90a:17a6:: with SMTP id
 q35mr43530851pja.118.1563363781452; 
 Wed, 17 Jul 2019 04:43:01 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id b16sm36927719pfo.54.2019.07.17.04.43.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 17 Jul 2019 04:43:00 -0700 (PDT)
Date: Wed, 17 Jul 2019 20:42:58 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v2 1/3] nvme-pci: Pass the queue to SQ_SIZE/CQ_SIZE macros
Message-ID: <20190717114258.GA10495@minwoo-desktop>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717004527.30363-1-benh@kernel.crashing.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_044302_847820_42B5F978 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-17 10:45:25, Benjamin Herrenschmidt wrote:
> This will make it easier to handle variable queue entry sizes
> later. No functional change.
> 
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
