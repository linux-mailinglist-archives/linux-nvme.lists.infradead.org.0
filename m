Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E823E8DD4
	for <lists+linux-nvme@lfdr.de>; Tue, 29 Oct 2019 18:15:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=MPfTnf4EHjwqE1kK/ETBkytcA
	525TQ5F2EOaOLlx4NrLLcsx79lr8i0hl5uuFcis6PVVCe9Ozzbz6Y61WapCfWF0bXcD+4J3I/ftBb
	UYzwum8r7GgTZF0Ez1HapG+WwWnMj7H2m2bq5Dejv2iGso3gkJmqDO1+Nx6k6FQy/S/uT6Ts7QwOV
	HO7oGsfvvPkqnvT5iLIWzqMnBDMdU8vqHqd3n6jW7PILoLbukdTfoxL87vSVHSlR0VfMJOL9Gbz++
	mo2OqKJgzulqdqXBSwzNlSJitbUgKb6F9k/eJWjaXHoVgCap9CdHnEi9KMHm2V7WoKW1i/5T+DKkQ
	xZvcPg6cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPV5N-0008V5-6G; Tue, 29 Oct 2019 17:15:13 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPV5G-0007ll-RT
 for linux-nvme@lists.infradead.org; Tue, 29 Oct 2019 17:15:08 +0000
Received: by mail-wr1-f67.google.com with SMTP id n15so14490885wrw.13
 for <linux-nvme@lists.infradead.org>; Tue, 29 Oct 2019 10:15:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=Rl5WCsP3hUw8rSV2Ux5jA76z7FQ2/oGh9c5Bze+VcSVE1qaNutGh14JiNpurVoNHGV
 KOaLhnEtUbf4yYmCnMBKdwhuXkAny+QWxX0Vcgf7s4GH8Lu3iaW+pjFlQjdn5jtxzS0b
 E/IT1+54fDcAd5clw/BG9oI/+fcPU2Xid7dRXlKC11Y3bRJvAs5fJz0NtyTsamzdjJMi
 NrUT33G4KuNLzSoFBry+E0ruk9Rm7BxMdxuZgAmnQL6lZIN2hLKs8AYR5zf4VS0EtNIV
 6LGYZVVRWgzElObAbmKvGBIGLAqnI5EYmFNKZorhZTPDGu/fYB2YUeS01yubJyPrDmIo
 NZhg==
X-Gm-Message-State: APjAAAXqA60N2adCrLm4eAPmdq4SRyNWI8PpATNpyPQEDFtaVcnzxGyA
 lNx2zhrn7XtT0//kcsJaDrdia8t+
X-Google-Smtp-Source: APXvYqz3XB7WndovkzmvEQ07gGKCFS4vwATnxhNw9+xxBP06mhk6dXW8xO1wpC/S41zRBZeNkBxS8Q==
X-Received: by 2002:adf:f145:: with SMTP id y5mr17225873wro.330.1572369304608; 
 Tue, 29 Oct 2019 10:15:04 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id j14sm18688807wrj.35.2019.10.29.10.15.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 10:15:04 -0700 (PDT)
Subject: Re: [PATCH] nvme: Fix parsing of ANA log page
To: Prabhath Sajeepa <psajeepa@purestorage.com>, kbusch@kernel.org,
 axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org
References: <1572303408-37913-1-git-send-email-psajeepa@purestorage.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8972928e-9382-3a25-5c53-918eb0a9fe14@grimberg.me>
Date: Tue, 29 Oct 2019 10:15:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1572303408-37913-1-git-send-email-psajeepa@purestorage.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_101506_898918_310A67E5 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
