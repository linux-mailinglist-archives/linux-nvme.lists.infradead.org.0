Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E8B8F21E
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gbCMdB43ugD5d2IE+EtOxTK1On60MqT/f6b//RzeyVo=; b=GA8sGRcuakYFDvxW2uIGfDOfy
	QZ6ignT6f/ipzfbeFChNT0lWGiZlB/w+VJ67wD8e1vpbIj0LajliRK67Wo3KA4rLIJGWehkC844TR
	82O7iPSFsr8I1D1GGX82G5H5wlhEROzmvJ6dWOkduZxhkCglw/nn8UcWNp5QcEFKUoiSWz+gUodhT
	ncgkiWZR2nqoPWWnGuIhx/ThRlWCPy96FlAh4R212CfvxMdobNtO622oyJ93JG0Pmelvyz0P3gmGN
	xIx3s+PoLIDqC+TS9DuaakVvphm27hG1GAqVqOYuD5b2hRANYh70HHvWpOB55YP/mnt+Z240hpESF
	D812LOaOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJUx-0003st-8s; Thu, 15 Aug 2019 17:25:15 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJUj-0002lH-Sj
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:25:06 +0000
Received: by mail-ot1-f67.google.com with SMTP id c7so7227507otp.1
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:25:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7XUkgWHsoYr+9qJH7gY0FNPB406RMOgVzJRnvTPV01A=;
 b=KlhDMJjJIAGoxHzWO1Uc01G7qBp+FjreZQBgats0XcWLcyFL0zNic+QT2GBWwoIIRd
 z366dEbeH/YpdXAH6XVboRc4fiNmqcBEM37BJY3jnybCdMD4uLKQG/ZHG+bnt+r7xe0v
 pKu+cU6QtqTIPqW2IFRVdpfH6i1RFbW5ty+62Duxw6dsAH4mtpZ+KftxAswyQtNRyMex
 uwLqOF0UeAUxbG4AUesPqhDtL2kKefXaNMjh+kEwxRqCltJMtseQFMZQy1V5ZS4fRZjg
 t4sPaIvmtOzkLKlFTSatPdLm9Zo78RiwRssO1lwD+eA8yD6bwVHL10P5lfeAVvh5Bk1r
 UhDw==
X-Gm-Message-State: APjAAAUg5uF3c0Ootgk89d+VH2OYKjgkb3FfT6oOQ/kvHyf/cUqsNLkB
 J9JanQELiE+NtXNWr4TK+hfYrvpz
X-Google-Smtp-Source: APXvYqzrKUWp0c2ZIhbsF9m1CLVFRB3lEed0AnijUDhowC3XgoZMlbS6OasJR+hLQbS3BWO5SlrGkA==
X-Received: by 2002:a05:6830:18d6:: with SMTP id
 v22mr998122ote.13.1565889901004; 
 Thu, 15 Aug 2019 10:25:01 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 94sm1134475otl.62.2019.08.15.10.24.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:25:00 -0700 (PDT)
Subject: Re: [PATCH] nvme: Fix cntlid validation when not using NVMEoF
To: "Guilherme G. Piccoli" <gpiccoli@canonical.com>,
 linux-nvme@lists.infradead.org
References: <20190814142610.2164-1-gpiccoli@canonical.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <18251667-7b5e-789e-a1f0-78f3cbfe1b85@grimberg.me>
Date: Thu, 15 Aug 2019 10:24:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814142610.2164-1-gpiccoli@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_102501_940062_8576B2EB 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-block@vger.kernel.org, kbusch@kernel.org, axboe@fb.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Pulling this to nvme-5.3-rc

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
