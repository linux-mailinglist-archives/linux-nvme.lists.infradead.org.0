Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495DF980BD
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 18:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CJdn/biyQd6q/224t77gGWADCHsvbKGZt29coSQ5kas=; b=SXXyc+Ad96+xjnrCMRchtJvIL
	0CWpo5liGQWeYGHZ9CXV/gqDxoGyCd4Rj7vfaoZOJBFok32/Mp3WTx6cno6ihKVtFnbKXuAHBPOhj
	9UwQooGSEUT/GkZu9awuT3ED1AAyeNnjbXtsjWEanvsRft/Tj0y2bynZh5Ew9b6YBywpAORa7Izx0
	FkWAlnxdf2g2cCxkT3Gh+b2Z5pz9+UXCrhTVDieGEZpIMSTUJHP/4j1TGkV34eqDeEP7zmLiOJFN+
	3UjV5c/v9u8zvJgK03Sp8zbbwfa4Ut4Ha9YEAL4FU/6LOoIHfMrYOT9Y99dWZulzzPyFEhvTwIgPR
	7jZc86FWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Tsm-0003oZ-Tc; Wed, 21 Aug 2019 16:54:48 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Tsg-0003eo-MZ
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 16:54:43 +0000
Received: by mail-ot1-f68.google.com with SMTP id m24so2674217otp.12
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 09:54:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hZxWHG0G/2p5UFgtwrd/gV81ZZVOzICgSQSgNXw53CM=;
 b=S/chC455jLA69BKp0Jpa7yni1O7ylKDea/3NmRy8cRA8aetiNciaEywKJehfEiViWy
 XAcX+Am3etoQ9zrR7pi+SvItrRjdY4RVi5l3lm8412Fjbk+uTQ8YdKligKyP/SjoRk12
 IM/QBIYVhAdd0W9nJ0cRgoLqVfV+Vfr4I+sGZELpfdtETHLuS1f5d5q3eFo0R1rg/+my
 YL0NmH7q8CiWLW/ERNgW4AxbOtnry4pkFEZhZ0KNo/9ppCQfVkpE72pLNPbVomQLOJB6
 UnWgCgRMNvjOp46h0A4jOE6tnSH77XL9CtpUuPA/XnLVH8AJuYf8BuRzjHUuoaJiw3lw
 BidQ==
X-Gm-Message-State: APjAAAV59XuzjlWjZ/8Sc/SP9LzbbqUBBWA4tpxJBSUXL2VWjAIQ0KMh
 2769uMXCnVTl+/augogQVfPdT4aI
X-Google-Smtp-Source: APXvYqwNVh22x4BPxzPqyNEqChs6F4TradKsBPjo+W2SpfdLeXhdXzcfaoPcGWk1CNKwWKBH51MBvQ==
X-Received: by 2002:a9d:7455:: with SMTP id p21mr2017188otk.111.1566406479866; 
 Wed, 21 Aug 2019 09:54:39 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i5sm2215656oii.19.2019.08.21.09.54.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 09:54:38 -0700 (PDT)
Subject: Re: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
To: amit.engel@dell.com, linux-nvme@lists.infradead.org
References: <20190821063711.1252-1-amit.engel@dell.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e1a9a673-5064-a86b-a731-5859cfcf04b3@grimberg.me>
Date: Wed, 21 Aug 2019 09:54:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821063711.1252-1-amit.engel@dell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_095442_735822_70FE2BC6 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> From: Amit <amit.engel@emc.com>

Can you please make sure that your last name is added
(author and signed-off-by)

Also, the patch title needs work.

should be something like:
nvmet: Fix possible buffer overflow in 'nvmet_execute_get_log_page_error'

> ensure that nvmet_copy_to_sgl does not exceed data_len

ensure that nvmet_copy_to_sgl does not exceed the request data_len

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
