Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECD0176147
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Mar 2020 18:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=o05CC3iF6O7KT2ppE8+4xyC39
	o5JDF1RqjjKQtsmy4b+cYU7WEZ6323CREwTxZXmlDbHhDHwy7tApu9SmLtvTmdQqCNqp696Y9fZRh
	RdnItTO+N/7bIs/1cGuyN0cT/bQTDiuIl0sOqt3MjpfRapAftEHPWWtk2IMe+T1HnHv8NpkSKp2jz
	TovLuraq88BwIAmS3a9O8p5ona6GWkdOR5kuXtecBY3KOIOGtDBxOD6LtFs5w7lGNbV5ojapFM5AW
	FirX/25U2Lt3aK5SPTfUAtmOalB2zXwNXAk5fHa0pu4qMHIo3jk+XUaN0BoPJbRzldjk0R19cn4Xg
	zX4VZVLvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8p4L-0008F7-VQ; Mon, 02 Mar 2020 17:41:29 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8p48-0008Ap-3k
 for linux-nvme@lists.infradead.org; Mon, 02 Mar 2020 17:41:17 +0000
Received: by mail-oi1-f195.google.com with SMTP id g6so76365oiy.1
 for <linux-nvme@lists.infradead.org>; Mon, 02 Mar 2020 09:41:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=NowYa7lpOHPARVmX/fsNxF+yPatcufWjR6ts8y2RkiocvXx4p8z0JnQNO9FsVh+qEC
 IKL1HgDjeZbiJSa+Z2LSQpOe8lpxq0u0JvJRpHO4CDfFxT+ih4Szi6hS4LLcDXe1/I50
 dxfkj5lgj19yjWu/6btMN5fUDeWozXTfZourxNdUJLjpXm1djJl/sXdglkjexKWfQAgK
 oMD4iaRSB09ROt01o2bynqcSKMwWRy2XVrJ7orAi5iga9P+hNLVRI8quxVO2EprRt3hV
 FnAV1l1uqmd5j6eQmEVhvs3vy2ym8gzOZRYHFHr9lSFakEjaBPoo7fMWey2OrS8n9mgB
 p6gA==
X-Gm-Message-State: ANhLgQ1O3ubi2t8zke5oGgwYeh7yxqppkbTZcWchiw8IlFZE4k2yHlBV
 ehCBO3UmpTynxFQapVeVBn52V3Cj
X-Google-Smtp-Source: ADFU+vuXPTyi+KXYjsCdkPWJJbtlb1yPr+OvCEXDIowYUtS576CNx9FrgKJVld5Bj/mmsP2twCLcqw==
X-Received: by 2002:aca:1c0d:: with SMTP id c13mr179745oic.44.1583170875488;
 Mon, 02 Mar 2020 09:41:15 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 60sm6859581otu.45.2020.03.02.09.41.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 09:41:14 -0800 (PST)
Subject: Re: [PATCH RESEND 2/2] nvmetcli: allow setting of the subsystem model
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200109050448.5758-1-chaitanya.kulkarni@wdc.com>
 <20200109050448.5758-3-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2bfa046b-0c00-e83c-b3a1-5fa39ebbd52f@grimberg.me>
Date: Mon, 2 Mar 2020 09:41:13 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200109050448.5758-3-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_094116_162716_64F84EFB 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
