Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFA919FB01
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Apr 2020 19:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=o5KmdaIIjTZqGsB1RdQg+pbqa
	CiZ1vE1DNWuxqBnrNnPlC+NyaFwdrXU5JRMiq0aa4ZNjiQkca3NiwkBAv2nr5XybNtOvkRBPL4FSM
	ntxUSgTgMhx0VTMSkXQBT0TaAP4VkJDuNctQpF3O9uTsZ/vWIZ0gpFmG7lnDFyjLsBXoYe/HvsIDZ
	MftHNGV1KfbDqSm/44D5qnYGxndhbdNpbRrrUiaDZ2dOoZnkHc2RHKyr6sUTJ3moNzHaPW2blOvlN
	ENM2iJUcui3VJSwb+8eErKZNE9THcd6tTC6SsZNKV+d9lDFwkOojELX2ryN9bFMTiFIh7gXCJe2nR
	LvvLkw58A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVDW-0000yX-7Y; Mon, 06 Apr 2020 17:07:22 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVDS-0000y0-5h
 for linux-nvme@lists.infradead.org; Mon, 06 Apr 2020 17:07:19 +0000
Received: by mail-pj1-f67.google.com with SMTP id z3so73751pjr.4
 for <linux-nvme@lists.infradead.org>; Mon, 06 Apr 2020 10:07:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=aQw3GbzWKf2KaqJqkch0yfpYLkuneD8Lh11k4G9pOUPKPdh6YPBECcL6aIRVidkD4g
 /zxz+w4CeXjTrkjglZU124i7z6BhxdxzBisHVumuSnZlWW8z54CVai7Ak8l6SW20NEvH
 sKzCqqRnzZApimhFApuklsT2UzWRz7HH0Z1iEDE3GA4306ybh+EDRPeMSUZOdH/9Btv9
 EW+TQ/yjbjETVUcEs8/E+BaYVBJBYH2b1g1y8KT9haJM8rhTgbaFACbqXTdOjqSNwN/z
 eQxmEtylD5zYT65Q8cAJF2zi7xQxt2tSOZwvpCgFO6WaF6NKBN+hwvT0o3VBa+Q4DwxC
 unjw==
X-Gm-Message-State: AGi0PubGHat2B74ZdyeDm3lK2YeA/ePqJTqVi/OG6KHhS4MDgQVrLnLj
 FFYLP7Op+w9XaSJ+B/ELGNf95wTY
X-Google-Smtp-Source: APiQypJ3Ig6aQBnaMTQ8xsk+gtclz0BBox9K1TAua7pSWfGscgec7/vwdpoUW3/oUvPJmVYTHLitew==
X-Received: by 2002:a17:902:7795:: with SMTP id
 o21mr21800164pll.335.1586192836005; 
 Mon, 06 Apr 2020 10:07:16 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:e891:e4b7:ccee:cfaa?
 ([2601:647:4802:9070:e891:e4b7:ccee:cfaa])
 by smtp.gmail.com with ESMTPSA id w134sm11803192pfd.41.2020.04.06.10.07.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 10:07:15 -0700 (PDT)
Subject: Re: [PATCH 5/5] nvme: remove the magic 1024 constant in
 nvme_scan_ns_list
To: Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>
References: <20200406121352.1151026-1-hch@lst.de>
 <20200406121352.1151026-6-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1e290f7f-3799-f87e-696a-62358a0768e8@grimberg.me>
Date: Mon, 6 Apr 2020 10:07:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200406121352.1151026-6-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_100718_209041_DC1611CD 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
