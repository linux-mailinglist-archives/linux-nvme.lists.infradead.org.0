Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26DF720BF
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 22:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=peOlUr0Hxa0NhIMpSBfneS3oD
	2zEN2sGr76QGWPi/SMTHSwOMPEb1S3rszH00VIA64raqvlcv8V0mvW0GYRzraKNABU+CafnRHPsem
	lX5WrU/mgUX7foB7Cacg3et1t25vPZgX0l+/Td/3PpiUIQ/7atr6wlWoIVlP+QnRbPxwEJ1AJe+ta
	ejPJQxXsnPx3Yqt1P6FTryooPlWF2dWtAZVKqNpdXubUoKFY52BXKia3GrS685rCXK8lDOl4W55Ke
	WJXLNb5dE2m25F8lJ9uiSbvCMTE0ilQZH5QEa/RwS6ZpGsvfCHEU4s5Iozbmiht0vOqMzgYTpF688
	6Fqyn54mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1Ni-0008Ea-FT; Tue, 23 Jul 2019 20:27:30 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1NW-00089K-Vz
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 20:27:20 +0000
Received: by mail-ot1-f45.google.com with SMTP id n5so45486487otk.1
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 13:27:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=Bjaf0jqPifqvyx1jsNRp01A3aIx2l3yaWzKNqf4khECPR/Rne2KerOGb6Rx2TsfPjJ
 ZCg3FO7oOTAdjpEYJPmrPwt3EctONim9TYonTxruHgQdrnU1bUt3RfnlNlGUPM1GF80D
 6y7mXLefvUhboDCjRnybSShLiUw58Sjhm37+YGPxrQVI/DZrCa2Id96gATcCKMLukHDr
 TMCTkDxEmnShqgcRmO6pNjaDsfXXDm8Ucj624KJ+Djzyjq9ib+hMjh40fgKgq5sNuBLj
 i67zzggd115w5qolxxD8RTvhpNSi247/TayMIvvqXB5VnROEW2wglqxsbtJy+fKua56G
 vWxQ==
X-Gm-Message-State: APjAAAU6wyf0SPhUAuEFR/V3Q3LSk1+m6XgQAm7SLFfd1fC1d4RAuLlM
 N8PvI+V6uE5OOiV1c27tsXE=
X-Google-Smtp-Source: APXvYqz3tGhs0ah9FOqsqlpkNq5fYu8sbVIeTUmh4QGOgVnTLRZ7uViD1YXTwfY+0XHGhATcEdJkhQ==
X-Received: by 2002:a05:6830:1291:: with SMTP id
 z17mr58968634otp.194.1563913637769; 
 Tue, 23 Jul 2019 13:27:17 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e24sm14903297otp.14.2019.07.23.13.27.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 13:27:17 -0700 (PDT)
Subject: Re: [PATCH 2/5] blk-mq: introduce
 blk_mq_tagset_wait_completed_request()
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-3-ming.lei@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <83a1f188-7e33-2e34-ce45-2875844af31f@grimberg.me>
Date: Tue, 23 Jul 2019 13:27:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-3-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_132719_032325_ADC755A7 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.45 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TVD_SPACE_RATIO        No description available.
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
