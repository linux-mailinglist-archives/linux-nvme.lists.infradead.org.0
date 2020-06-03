Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B10F1ED81A
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jun 2020 23:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=pAApI1IFUXkiFW1FsBfqmd3nM
	PULW6IpmO3UxjnVjJB89ys1xauaCtoDCKpb+Gxo3lbkf0CNu83LapaQF5dyoYRNFy+zQfXiorSsch
	MCB24q2k6lqiCGbLAtw5YNYE8d/bHY/rHVR/2KgnLk+Oo17ljzvXJLD6zrZgPB17NDxx+znQYQZu9
	SjwoB90U19+GaSODXmNXSN+8C6JQ3G6ab98WnpP9lAPacWAjg7sWf3x30SZSZ2RUaWiD2n8WQvsxq
	D14/lVAuXM6Ij4jiUiM2kvbn1sl2jxLV1F5ATAKH9ugoBfL3s5dlQ1Xmd7WkuSsWATczojP+rwxo2
	7bHRGMb9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgazu-0007iE-RV; Wed, 03 Jun 2020 21:32:30 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgazr-0007hr-In
 for linux-nvme@lists.infradead.org; Wed, 03 Jun 2020 21:32:28 +0000
Received: by mail-pl1-f195.google.com with SMTP id q16so1279791plr.2
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jun 2020 14:32:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=MrLeuITjIOMLTacEaEDtvK3XSXcGLx+5nJ8cyrCHEXjw/Aktb9VvMnpzcTV3PxbMAP
 qfTqyOW0ma9+JwKg3ot39ECl/0DVDwtP/wmFXfmKhD2AMR/3X8B8/GkMXLtW3CM5+4S6
 9KnkpNPuWbxuS5/Y03rCpQgk23WMNsC7o9Bj8JYZrz+l17IHspbJZZpH6+r6QXUejtO9
 YroRnRcflL0/oU5KlVwzpyeVLOudH80yHGDO1vOUe9BTUBalA362vDIypXeFJEtr0DE8
 QvGF0Rrt2qoej+MSwJDh6rl7lzTI0tkfZO27bOAC0+YNXBdouzhYMbx/7hjHS+N1QuJx
 OW+w==
X-Gm-Message-State: AOAM530g5g2WS0nGbaTcAFHlRsbOK9uonmWa1KFgFXUGDAh2zKkU0OcC
 D3Kwvvs+xJRhUxKSLTpor8svsHeSao0=
X-Google-Smtp-Source: ABdhPJwhW+uLI2cBK17pJ8rxtIn1WDpscu7FB5VWYfr5eEJwjpzwhKz920dbxZlwaLwIsgIOuubwZQ==
X-Received: by 2002:a17:90a:f0d4:: with SMTP id
 fa20mr2149642pjb.160.1591219946281; 
 Wed, 03 Jun 2020 14:32:26 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5409:1488:6d95:bdff?
 ([2601:647:4802:9070:5409:1488:6d95:bdff])
 by smtp.gmail.com with ESMTPSA id f6sm2773150pfe.174.2020.06.03.14.32.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 14:32:25 -0700 (PDT)
Subject: Re: [PATCH] block: remove the error argument to the
 block_bio_complete tracepoint
To: Christoph Hellwig <hch@lst.de>, axboe@kernel.dk
References: <20200603051443.579748-1-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a46c6fb4-1b0f-154c-4158-a05bb5891edd@grimberg.me>
Date: Wed, 3 Jun 2020 14:32:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200603051443.579748-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_143227_617754_576FFC7E 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-block@vger.kernel.org, hare@suse.com, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
