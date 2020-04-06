Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B956E19FAF2
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Apr 2020 19:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=HuAxFKDASrv0pbn671MNVn1N3
	a/8pXUZuaQCnWJSkzsThPp23/Rzt/BGe14Hob75t2QqUVJ0K74CqiTtKCVLH2ukMeAALB/DKDFFF/
	Fmbt2tRo9dXd7ud3PJzwfT/UxA1or21ov2jxzJcIAnZh+wfxTu1eFaO6srt1PdRrKFRzLtGUTnP7R
	MM208KJxdkveORi963ic6zqAxWvvq7iLbQBRGJ4ERCzZ9sYvzYdc9Q/MoXagcZWwms2sEIdSdMm0+
	OsbRLXiOzuLlSScYopR//BpRsaiv9mY3dkIqCAFEfs0p+LB3IABXveP3BDKiHlKNSvAzLIEzfnTpn
	aCg9GEDhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVAV-0006Cd-4L; Mon, 06 Apr 2020 17:04:15 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVAQ-0006Ai-IP
 for linux-nvme@lists.infradead.org; Mon, 06 Apr 2020 17:04:11 +0000
Received: by mail-pl1-f195.google.com with SMTP id g2so46034plo.3
 for <linux-nvme@lists.infradead.org>; Mon, 06 Apr 2020 10:04:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=UA9iMKtcRzk9OKdnK4aYkuVi6Q4NcZ6oaDXiBzF06nHWU/9j9dQr24jFRH95pWyJVh
 350rfjuf+hZaB3OfNSMJo06f3azpvFeG6HIb3Z017vHs1NYbOq13pk+htFYS1BY4JyTL
 X0ObMtFW5IZrD+Es7BXjrLEt6L3774qfeCsjrhkemyNS37XSZrlK3JVOkcIIoksQiyA/
 7TUGdBYERTqoazLGoNfsGv3nDo5WnMD/9zETNrfnZf3KFdKfkfyjWhrI3ZoO92Tvk9gO
 9L0p5tCPDDvudRQSNUYG65IywLxJc+1OpSy1VL0htNSfaUZX4dhZBXXd58HDDcGLAF1a
 4ESg==
X-Gm-Message-State: AGi0PuatM56JBVD7nASdT/45hrJficIkdoEgHiBri4LLNp8w+/KaEp1F
 oHnpL7O2Yse855bgAVFJgZSNQ6ka
X-Google-Smtp-Source: APiQypIYHZCAX9bAG9l/hgy33ZC0vmLYMNE34WLuZglILDhkq1oue33dg19lqSeOl1ebOR0eHgOVoQ==
X-Received: by 2002:a17:90a:15d6:: with SMTP id
 w22mr244256pjd.173.1586192648943; 
 Mon, 06 Apr 2020 10:04:08 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:e891:e4b7:ccee:cfaa?
 ([2601:647:4802:9070:e891:e4b7:ccee:cfaa])
 by smtp.gmail.com with ESMTPSA id f6sm12278551pfk.99.2020.04.06.10.04.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 10:04:08 -0700 (PDT)
Subject: Re: [PATCH 2/5] nvme: clean up nvme_scan_work
To: Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>
References: <20200406121352.1151026-1-hch@lst.de>
 <20200406121352.1151026-3-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <17f375cf-15cf-69ea-ab2c-06844cf4481b@grimberg.me>
Date: Mon, 6 Apr 2020 10:04:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200406121352.1151026-3-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_100410_607524_49F27FA2 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
