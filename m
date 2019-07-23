Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285D1720BE
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 22:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=sqF0N+s+4Hg3kIje8xM98Ch7V
	UmTq0sBUhriTP9LsySSlFUBvAwysCPrxuKRq2R5pxlRPZWEy77S4MXGA45QplFVbDieyEl4mW5lVH
	qoJs9AifipgJO4w0dei4d6A222bYZqtsKrk0AzUEBuSHb0Y1z/GGGAQlieC1bzMckJYblQ1l8yYbl
	zO/zUdaVA/jFITFV9cWCJTHpxE8eOPvwr91ogpUsvi6fA9m6PAPzvyLbxFbljBxkd7rmqAGW+hg1T
	ZI+C0Jloa3wgQC1lQTHrV1voLGAK2FEiNWBR75g3SiekqDPv52zHpqDL1ejGIcFUeA8266fBHlcmV
	sMZRXoPWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1NH-0007yP-Ry; Tue, 23 Jul 2019 20:27:04 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1NA-0007xs-4g
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 20:26:57 +0000
Received: by mail-ot1-f68.google.com with SMTP id q20so45386248otl.0
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 13:26:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=lXTj3uIXY7t+4UhqYTF21sutcoXMdI5xlBlyHPUsB6n+jzUIjiMfaPu71UB925pAKB
 8/Q+X0ovP5QDjLvZ89dTMFwExnuX72g9eL6TCv9Zq1ii8jmmlcg4UtkZTSLNGFXWNzq7
 bcwvw1O3tIO2EkVYU6Y6Nqh3M5AenZYqUI195OZHNivaBUfioITG8dWKXeoirCHNwWXL
 L7MIqTmEYJr9zIpOSn2BbnbC/Plu9WIPUiFq6bSdAR1NvZwdjSlD1mX3V0yzfl0zma8H
 AaW4I84cmfZL6yqS8H3eCWpriJ4UhAlrtDiwAn7+0kWmu3nQzRjocgoKeQCFCXkGNB9q
 9qEg==
X-Gm-Message-State: APjAAAVOFvAyFFrtgTzATGK31AQpFyM4M0ymWI3SCzrUqL9ndVeOqNyv
 LvzHxzf0lTQAHQTjvWc3bws=
X-Google-Smtp-Source: APXvYqyImRGHkCa4ehPFItKG+s5UmjCxA9i/WdJAEsBhdV3pdYzZYeaCF9xFEhq0VyAyDlwIwbj9gA==
X-Received: by 2002:a9d:65da:: with SMTP id z26mr47375238oth.257.1563913614566; 
 Tue, 23 Jul 2019 13:26:54 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q82sm12695965oif.30.2019.07.23.13.26.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 13:26:53 -0700 (PDT)
Subject: Re: [PATCH 1/5] blk-mq: introduce blk_mq_request_completed()
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-2-ming.lei@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f89fffec-59ec-c911-83e9-bbe5feaa40f7@grimberg.me>
Date: Tue, 23 Jul 2019 13:26:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-2-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_132656_180803_A63F92E6 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 TVD_SPACE_RATIO        No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
