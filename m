Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4818D34D38
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 18:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NItruRdoF1WQfYprO5J60P9EVrAJOYfnWKIxxD4/t6k=; b=VUxumd1vYDNiljtEi0z3q3qDv
	ttp+zFiCW0gqJFaiR06KioF+1EiyFdeFwBbk57QeQdnf6v5ZjxzTXAq28Tm5y61GlE1Om+Bd3fW1j
	di6Kj/zBMtv3XuaPmtY09w1Hlir066B/kVlA+Rrzj4lJMsQCunpcAjv52FdsG+eeHxZdH/DCzK8rA
	bZhbMnOUWVKZjLaF0fpA93cvb12hTHWuHUgPcs0bZkH4V/e80vCFFPjUC+ax9pYgBiApQMVqMYTDU
	joBbqyS/1i7qsXfa/Lbr5M5tU8yOsYQ/E1hx5KWMU0diqGMBWmoq4AbeVXxg1Oq0TiTcTNKCn4DYj
	pPm7jnhmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCHI-0004HS-OO; Tue, 04 Jun 2019 16:27:12 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCHE-0004Gx-7Y
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 16:27:09 +0000
Received: by mail-qk1-f193.google.com with SMTP id a27so3228544qkk.5
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 09:27:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CF3ASfHNmtUnPDilrluqvWMoOLS7eWtLBFRGXniB+s8=;
 b=cQPVl+H2t3Ib3GDbz8JI22mGqY9K5bJnI2QTKh++6kDH7GpsIazfIy0CNc0sObopi2
 xvQxyUZO1rahP6ssaeAEkVOjwzoo1JjIRbpzKBu5ubK7aNayRgSjIHk7vSV4+/tPOaGF
 Rnl19pSMz6ZvwySovzU811KyX+IThdGjfOYcwd7FanzaUhqOl4DRHmGV3P6Ha9Av3Twg
 dOcmQew5DfLovIorTYfYJBXkiGiQZ/z3EL+LBYjhZB+wOl1P32xdgfapijRpM5THkFyr
 1HPrahKhjzXOUFPxswyQ2sH1AEjX6aBXo1oKgGUaFV7kknnPA/d0fGEfaK3zfRxPY4lT
 9yhA==
X-Gm-Message-State: APjAAAURwR+/6DIP/yOUXG02ZZV7+/n7qDv/i62rNXsqyE4kTK4yvIiB
 gbr6PMZZ6juP9k4oJPuAwis=
X-Google-Smtp-Source: APXvYqw1zN4aSrWfwk+pDwI03dq5vFsq+jurI+GmPg3lOVdHUH3QPGFswiiemu/HZp9zqdaPz2flGQ==
X-Received: by 2002:a37:4e92:: with SMTP id c140mr28120631qkb.48.1559665627108; 
 Tue, 04 Jun 2019 09:27:07 -0700 (PDT)
Received: from [172.29.5.11] ([52.119.64.114])
 by smtp.gmail.com with ESMTPSA id m66sm10463877qkb.12.2019.06.04.09.27.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 09:27:06 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: Fix u32 overflow in the number of namespace list
 calculation
To: Jaesoo Lee <jalee@purestorage.com>, Keith Busch <keith.busch@intel.com>,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
References: <1559604301-14042-1-git-send-email-jalee@purestorage.com>
 <CAJX3CtgdrbaPhFPnR13CT9mAQ8yVRyPFMjbFz01gcNz6G=2T_g@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d3d00daa-ae3d-e5e7-2e58-ed395f52af24@grimberg.me>
Date: Tue, 4 Jun 2019 09:27:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJX3CtgdrbaPhFPnR13CT9mAQ8yVRyPFMjbFz01gcNz6G=2T_g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_092708_271523_6C1967D4 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: Roland Dreier <roland@purestorage.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to 5.2-rc-next with a slight conflict resolution.

Please verify that the patch is fine by you:
http://git.infradead.org/nvme.git/commitdiff/e6c9417f9eeec4587bce5a861cfcda0f02b39464?hp=c8b0ec95a45dfda1360a58458456ded45a42a83e

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
