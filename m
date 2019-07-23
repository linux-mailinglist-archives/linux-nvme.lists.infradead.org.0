Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D544571DBC
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 19:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O01AyQ46sg6TdbdDRWxd+mrPia8qARFYyC4BcGfCpVc=; b=sLO/+1cTSljRB/GfNx1nUtLtA
	GaNrDvxkZMmp/B41HKuCe0rXFfyQFLdVrDtaQjFWfMrNJi+aXHVPW23XTZhxkersS0T0FplxS254s
	hlqPYRXhafDU+DtAs9Q+bhhmHJ5gdbTk26jGKWsYmS6yQ7cLBJL9afQYtKxnrbAXtRQvNipuo9VhQ
	rCC9OHboVzB/JKy4qS06zMT9CsNG+/8GbkqWHbfPbj2eDIqqgr7/B1Zo1ftPlQERF2/0nhF4J5ND7
	YNO94Clde42QLPMf8K32Fqd4/xJy/0h/WXBNGY0hqwYukuVSC7RbUxeyEPqqDDCSpKdQp8m2Wk07H
	dYejPr0Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpydS-00026u-5z; Tue, 23 Jul 2019 17:31:34 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpydI-00026F-O6
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 17:31:26 +0000
Received: by mail-ot1-f65.google.com with SMTP id b7so6399199otl.11
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 10:31:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qylSyTpzIDonD/qE6oMjM+z3Fes4lSbaoAHx/vvJlVk=;
 b=eHzC641OykAbuSkErlHI77wRPgtuP8JxRilk4zVBuqSj//9I6BbwiL+vi2jpIxKdbp
 unjGUs2iq/Ss2w/Y327W8AUQwqKO1VcYHyBxXx2ox/iBDY8S9LzqgNY2rQ5xwNniSAdK
 oJJ4xwHsr4uBqixqpcfQ3VmNEHJkJwaLUBuOF7nu8f3ZO7Ie5EHj9lJIZadvCAgRsiCC
 GUSue4yHXPMZrjgaLyMx2yNmQhnza6gs2y6jvrXKxwV38puo95Q1O093dgTIkvBnowkx
 VoaxVWuvZn6w8zJJUFNxzaHZZlmeAIh+lIpmWi4u01M47g8W6ozDGOwFFucTc4bCYYP3
 sAtw==
X-Gm-Message-State: APjAAAWNqqmMuED2bhGt/pdAIj6licpxhvwobJWRdTGwvSdb7Bah1nh3
 BjVolFm78we6Bv7qRKObuuA=
X-Google-Smtp-Source: APXvYqyaSQzB+mPKPVQRU+XJqnpN4UoAsH5+izzGIvQ8WoQHvKR1CpvKkR7hulz7u3n5fg82lJmJDA==
X-Received: by 2002:a9d:48f:: with SMTP id 15mr24729715otm.160.1563903083738; 
 Tue, 23 Jul 2019 10:31:23 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 65sm16157066otw.2.2019.07.23.10.31.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 10:31:23 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] nvme: have nvme_init_identify set ctrl->cap
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org
References: <20190723000654.6448-1-sagi@grimberg.me>
 <20190723000654.6448-2-sagi@grimberg.me>
 <0b926f73-c439-7057-dcb8-75e89486f084@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <67662209-d680-733a-e673-6cd2c45010b3@grimberg.me>
Date: Tue, 23 Jul 2019 10:31:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0b926f73-c439-7057-dcb8-75e89486f084@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_103124_785692_9528D866 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> 
> wondering why we're re-reading CAP if it was already done in 
> nvme_enable_ctrl()

Its lost in patch #2

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
