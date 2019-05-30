Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A252EA17
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 03:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=lha9a3mexI07hI8M22K/8X9tR
	KyQ98HaRILjvMMwMieSU2MJ+Ste03A37maAJHzg6aLb15bdMOqtP42QU7NJ4EXbzGIgMZ3riHuBZA
	/fQeh1o/A5Vt4zk8oFifVVl1wbZ+5/5/MA8MsdtLIjGC+VOpXFr7X9xAAyK/weENtnpgmX7VIfXmF
	9j0UK9qzNU31nAncVIIhcvfiKv1cx6MlOo4jnlqFrsthVg7r6s8588AywS9PFUh+91VetfM9vYusO
	L3Z/J5Uckd0p1xwZdFFNJtdLJ8lbAcSTcAlS3czZgfNjU4aGG2mgALREj921mBLKWgrnRLkQcc2dm
	gV+mTiEkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW9Zu-000726-Aq; Thu, 30 May 2019 01:09:58 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW9Zq-00071m-7O
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 01:09:55 +0000
Received: by mail-wr1-f65.google.com with SMTP id c2so2975342wrm.8
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 18:09:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=KCighTE1MWOoPim6ugRM/SY9Ec2ryi1e+5M7SsZo6yEMj3A+Vu9YnC5+fWvTQCpnuy
 pZ+xTzcQV9e9J58XmZPMRIiEmP24Nn0RVXNYyGbEOuAEeRfJ6HkjjOCfwXW0hwJk4vqa
 s3vuekzZYIGI33gZ+0scPSGgWN1UTHR1tm99zjnzpTa1gTQK6nIqEVLI3VFPsp7QfRkS
 u0t6We9Z4jKVi856dfzP14cXWbXLutssBDFKwIEcrKaOEXHXfVrVyXZhisMoFkv4i4Z3
 lNH0WTGOrBKIQSnBBSaxXL7e5jo61fqrLbiQy0fsIdLYjN72GHCQEktVg4qwZBBbpdh3
 Vdqg==
X-Gm-Message-State: APjAAAXJnllVRTlHGT8DYHw4HZL5Wfr16ITQtUrlVxSBIJtwk5kP4wc5
 aV4DChbnyUU4TrzGCs3/FFc=
X-Google-Smtp-Source: APXvYqz4T8V8JSrDBXty1YsoA156m8KqfQHsmT0zIDlMYV2uNX0c9L2eDS393ascUnSx1itwmbMVVQ==
X-Received: by 2002:adf:dcd1:: with SMTP id x17mr555429wrm.98.1559178590804;
 Wed, 29 May 2019 18:09:50 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id a2sm2659903wrg.69.2019.05.29.18.09.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 18:09:50 -0700 (PDT)
Subject: Re: [RFC PATCH 1/5] nvme: Make trace common for host and target both
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
 <20190527175346.29972-2-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a67ddf36-8c3c-450f-16c1-b9a5cb548a5a@grimberg.me>
Date: Wed, 29 May 2019 18:09:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527175346.29972-2-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_180954_264346_3C1BFB38 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
