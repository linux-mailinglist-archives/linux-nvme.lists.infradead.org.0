Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63920292F8
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 10:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cqs+EPkhmmqf9AA8+vpuOJfFhl2I+c0r2KFneCgpp4k=; b=Q03Ef/4FQGorNHpe7nKk9U5hE
	UG/2tAXKPfc9Zm8NWOat6noxwJP9b55rzXmAi73JdWPZnZUsBfMvkzvVIDnxbmfqVO18PAUCoq7PZ
	aMVhfN69W2UDaae9egYJU8j1JwvtqpcdsqMpdtBxZzNF1Hg6nHgr75BUsIiSFuWwi6kFxA27ZBM0g
	nUyVo2olc+915iNqGIOi5uL3pFStCgnDRmdy8C6SJbQ8ACC7RDtwvtamHOoyxxpCvHLuqlyL2PGrl
	v+GRZlwV1zrO6YhFYPVUG9Mxt4YMuU8USWeuDiP4nxY5EvCw5ttgCBTqCteuTQ2Xsv+/dWFy/k/0q
	1It7fu7gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5TI-00063r-RK; Fri, 24 May 2019 08:22:36 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5TD-00063S-5A
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 08:22:32 +0000
Received: by mail-pl1-f196.google.com with SMTP id p1so3886081plo.2
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 01:22:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dn9HnNUd8MkzOlAjUzB8cGnW56uKPawciljrh6qAcGU=;
 b=IOi+LW0ocFshLHASbHp+5+YW7evB0eoja8uGEgBM5UG4Gg25GOoq+ERtyEStvtgIlO
 8dQbARv4f+HUGYtIroyp3q6M+ABEGlS+YsKuH1/65CmEYXwk050dorT7OuaVa5xxvZ/c
 08c7UKUNlNvPdb/fLrr8rDmzy5+0qVQ50FM5sK6Up1VfN6z2154wHq/0MzFoTcm7/kzV
 mExkfXirzz5HZHxW4zhJsjfbVxGB1n1/y5S+hORH6hBjIEr6diPdBOn8tUx/YDOVz6xX
 ZeGNYQktnH9xtqmSAnXUuRq+ersNaQNWX6QO25+yh7EEwrZSZ3CJcV5TuTy/KPrQbEiz
 WbSQ==
X-Gm-Message-State: APjAAAUmMmwndrBUVhInn+Vm+VU92j7a2cql9QCEkAbVoNca7ryKRYsh
 LVB87UMHNXEqITtig+1Wu4Q=
X-Google-Smtp-Source: APXvYqyK1VM27brumRMPTQHuzquqqivBYAUHqEy4UURKWEgcElQiFm/XAwaeunQfFm7+gPaEf9n4Hg==
X-Received: by 2002:a17:902:1102:: with SMTP id
 d2mr16559726pla.84.1558686150569; 
 Fri, 24 May 2019 01:22:30 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id t2sm1690745pfh.166.2019.05.24.01.22.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:22:29 -0700 (PDT)
Subject: Re: [PATCH 0/2] nvme-cli: fix disconnect-all for pcie tp
To: minwoo.im@samsung.com,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
 <CGME20190516172415epcas4p4c4e3f6ce4d62a28cf4632f3fa766e861@epcms2p6>
 <20190523042243epcms2p661452370709ce8cfdf38c10a9cf5f637@epcms2p6>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c94d663e-5e7c-bb21-1954-4d5fbaf67d9a@grimberg.me>
Date: Fri, 24 May 2019 01:22:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523042243epcms2p661452370709ce8cfdf38c10a9cf5f637@epcms2p6>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_012231_194703_E23450B3 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For both patches:

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
