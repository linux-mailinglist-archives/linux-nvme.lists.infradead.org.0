Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775688F1A4
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=agG8B3zZVPSp2EnZl/djwU2CBZomsKUjuTrKc1rvvsM=; b=ZBOscN0qL0gxbcWzEoUfX9kUZ
	pA9XX0mPdSyekvmP9grShBWgnUVSU7JOn4eUmmfIKssSv2vRCnclyh+W1RDLWzlMR+DbE7McGjAsl
	Uc8pLTDCRKZyx/d4Ps67juWhqVe8afcfOjL6KuXsD9dE+8Sf2/zooOM0PSUeagxJ30cEWLkZn35dL
	B3gdAuo9I++5rAO3Y6UxMDKWmEOaMVKRT9e64WtyhBQrqo8unstNmjekKALQBlbFoDc8YGHTAbw/9
	SAbcU+CWImGWfFVhMncxtxZ8S9gDpGqAvFncIhXog7rJtIDr8zDvBBDdBUIYvYV5Vhm5BqWn5A2Gk
	wiOLMrSgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJHP-0005Kq-OB; Thu, 15 Aug 2019 17:11:15 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJHC-0005KP-UY
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:11:08 +0000
Received: by mail-ot1-f67.google.com with SMTP id c34so7088898otb.7
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:11:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DSenBk6iYqtetkDT5se3eVZkFpgvV+O7oLIeymPsuUY=;
 b=SOABRgBG9khqazXUG+Mv0H5BndlbYhnyxKivB7Yy1/B+81FRs+CIPcOijDDGXSIF+K
 xpQC/QvBIPFFaQOzpqkvUDIY3iOxSmVHTUEmuclap22xZqlUG+ZA7I5Nc/kjOYEN0RR7
 pktNnyX0XsphdfiW6zn2uxgkIHLBMx9F4q/HrON9DN7rW+VnutD9ryqlY9XOiPBIIbR2
 zIQpI/DgbTROg+xWEhHjR4CS0M1Zi/ZUkuguSLm70tR8QPeB+CnzXzvRw5UD4KPDTg5U
 QINWAz6qCjhLAt2eYgExWnsMfok04jNoscL07n7Vcsnc9mWb9gfwbXkOY0wG9ojVwIX1
 fz6Q==
X-Gm-Message-State: APjAAAVHLk2CNKRf4reNmsW++Pgm6o2YR6ECeOa4rJv3DbEKazh6du72
 3/l2w/Q4jsmVqN0X4rdnU9Q=
X-Google-Smtp-Source: APXvYqzZvduqnRj51nVPTd+reKO42pur8+tJFIFIM0bMHAE3/LhGX4MdtOf7mSpWrlOn686cKPeczw==
X-Received: by 2002:a9d:6b96:: with SMTP id b22mr4467229otq.363.1565889062194; 
 Thu, 15 Aug 2019 10:11:02 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e2sm1210914otl.67.2019.08.15.10.11.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:11:01 -0700 (PDT)
Subject: Re: [PATCH] nvme: exclude completion trace from non-multipath builds
From: Sagi Grimberg <sagi@grimberg.me>
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <9efc495c41b7bf050362a3a7eb64b5809092afd6.1565280170.git.mskorzhinskiy@solarflare.com>
 <1febf497-e92e-6acd-1968-50ae7735ec79@grimberg.me>
Message-ID: <a83f9206-4e09-3522-8574-1f9887491e2a@grimberg.me>
Date: Thu, 15 Aug 2019 10:10:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1febf497-e92e-6acd-1968-50ae7735ec79@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101102_989173_3B18ACF9 
X-CRM114-Status: GOOD (  11.60  )
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
Cc: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> The call should not condition on CONFIG_NVME_MULTIPATH, but the function
> implementation should be left empty if CONFIG_NVME_MULTIPATH is not
> enabled (see nvme.h).
> 
> Also, lets call it nvme_trace_bio_complete..

Hey Mikhail, are you sending a respin or should I?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
