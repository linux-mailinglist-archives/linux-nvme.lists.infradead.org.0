Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12521F4234
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 19:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=qyWTL5TrZtTuyPpey/1wYtG0F
	7gygECe6L1F96SZeZjRF9Uw7SF3pIIHx+TRtINxjfDchdKW2S4K7JobU/swpO+DG3dVmWSzRwQ0NH
	PPhUp150QFhp/9eQ1FpPDz+4hYVW9wDbof7cCDGgTv0HJivLE1rXEQ4QrUwB6PwU15NhEMsZ7mzX2
	zRIjsT2SCnTKVQ40oK7Qke7RSsarTkTveyhZ7JgXiu2UhUPuAiCVhjLzayIpgb48CE6WTVXj1Gu7/
	9fxq+oxg9uEQEdnKj8C42TPQrDwKyc23gYGCQ1orEZu8jHRtsd8cOd5UTwbdb+RVlVblywdyGGUhq
	Bq3rIpIUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jii3N-00011m-9O; Tue, 09 Jun 2020 17:28:49 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jii3J-00010t-1m
 for linux-nvme@lists.infradead.org; Tue, 09 Jun 2020 17:28:46 +0000
Received: by mail-pg1-f193.google.com with SMTP id o6so10614312pgh.2
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jun 2020 10:28:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=taO1o4/MnTBS1LQw4UpAQiHjTb1qO4gYXax2RW+xKPpWyuRcvfzhroruY2gRjfIb6P
 u5m8ZC0Gcud2EnWORixR4ZIEK97QCTdsauLKW9rWcg24A8mjzBrEyactat8xv5/DPLkK
 i3MbKYduXqp+9VI16LYqyCheqIHoWmxyXt37tdLt7ZPJP46PN0kfVnBwR2K4fSEN5jnG
 ZJVBmyz4MN4epRqV2fzNOE5kiRfJT15iHAbvNsgpeLKyD1YCk00kXxdwAPGwgwE1kyh4
 5TJMjInAw48r+OOA9QM7ba5o2lOPP121XpfALwXCDqIxI4MZIUDrKPtklZhp7rwxjpcN
 BmJA==
X-Gm-Message-State: AOAM531sjNxHAzncLZ9bun/VPOLXkYnSiCUHJhNeFXE4eQTn5Qjd01eB
 BJYiuSt6EJ7k6Iq9C8pm+RVr8HqUcgg=
X-Google-Smtp-Source: ABdhPJyGili39+ThxJTwwfD7omluO0YQvC0qiA1uDN0bKnfmbolfaxVWIy+Xg3mrqjeuAB+OP4j/+g==
X-Received: by 2002:a65:46c9:: with SMTP id n9mr4347515pgr.89.1591723722455;
 Tue, 09 Jun 2020 10:28:42 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:8d09:1feb:aaa3:3f03?
 ([2601:647:4802:9070:8d09:1feb:aaa3:3f03])
 by smtp.gmail.com with ESMTPSA id nl5sm3442443pjb.36.2020.06.09.10.28.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 10:28:40 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: use simple suspend when a HMB is enabled
To: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
References: <20200609161053.46493-1-hch@lst.de>
 <20200609162953.GA2278@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b698dc4d-7d30-48f2-cca9-03057888bbc9@grimberg.me>
Date: Tue, 9 Jun 2020 10:28:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609162953.GA2278@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_102845_091887_C063B358 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
