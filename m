Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F36A19A50D
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 08:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eipmBXJanIfZemn3SfdTUxD8sc92sGmv1lVWWa+blts=; b=mM/5Lqn4OBekTWCtB1lKC7mwW
	0Gr85flM5JGQs2KxxkOC+v7xihsqWVgz3PEfT6/S+k4kHFJ/29JGCpURChamwyA31nKywrueO4P0u
	Ec/uTHz2ze7HZ7qLFfwLSehgE0kqaRHkWEdpEMETBjEDJpzFEJZUeds+C4HNOB0fVXnL58EUjMSw9
	sUzXY00NyOPmo9ja61CBSkg7RzrvjqOwFL04o6sNyxOicZiwmIWMUr5H3ULJ08k9eW7XKLcVh9FH6
	n0NlOQS/TgQJnPnP8RF8NquQu+xybjJT3zAdOM1dqrNo8CIEoD9kHf9GThsdfXYh7b4BfMamChI7v
	CsOKYiM7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWUC-0007FV-Mj; Wed, 01 Apr 2020 06:04:24 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWU8-0007FC-3N
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 06:04:21 +0000
Received: by mail-pf1-f195.google.com with SMTP id f206so11582018pfa.10
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 23:04:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cIC0DzbVX/l6OnaMYG/woEzztGEiop1l5qR9Snr7taw=;
 b=mF1JFy8LtkkvUKDDgZ65g/oaS0P67lkC05nIIq15lgmY5/BRX8/fwr1h3QIZoUo6Ca
 LHtDfFk6i2aIml0dWXOO1+d7EqjrLNQyJ0fKGSL43oSEFa+Yy/lSiUglIzBEicZckSaM
 y4rr32suDWp4Yloq3XEKyS5LqBKpwNZKmBVY/Oaczn/BoPI5u0Ivh/7hVfYY9O7XzgFt
 yy3W9Yi2mDp7x8jEgWluelH8ZEFjK2K+s0FJY9PKdr64uQuR/faaxpY2tMTuhljCm8ra
 LdjxBK3RrG0lY30HWtcqvJV2QwWgM5F069d3nzdHTaFg92ojmQo6Bg1Euhp4ky+a+D4R
 PsSg==
X-Gm-Message-State: ANhLgQ3rK08z8BDBUy6TN0XYIFy5814UgVatMbtfgFTt9URK/XxC1Wgc
 qLzoze6XWViV2FjUORQq2Q+c4pxm
X-Google-Smtp-Source: ADFU+vsHVw/brUPVj5RunHH0B7qp6qSpZ63sABxnQn48reYrph2hGrcRiE8AMPMsNJGICaWmY/Gu2A==
X-Received: by 2002:aa7:999e:: with SMTP id k30mr21246921pfh.235.1585721059328; 
 Tue, 31 Mar 2020 23:04:19 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:cca1:4ce7:5ea6:1461?
 ([2601:647:4802:9070:cca1:4ce7:5ea6:1461])
 by smtp.gmail.com with ESMTPSA id g75sm699477pje.37.2020.03.31.23.04.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 23:04:18 -0700 (PDT)
Subject: Re: [PATCH] nvme: inherit stable pages constraint in the mpath stack
 device
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
References: <20200401055358.6458-1-sagi@grimberg.me>
Message-ID: <09aee9f8-ef24-4d1e-e9ce-e49c4ab629fd@grimberg.me>
Date: Tue, 31 Mar 2020 23:04:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200401055358.6458-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_230420_134006_A016CD65 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Please ignore, compilation error...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
