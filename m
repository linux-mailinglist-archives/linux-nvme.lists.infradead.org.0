Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C00292CC
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 10:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sNkMxp6YYM/HBAWqezDHFhMfNZ5ZIo0Sa5IBiHTzgWk=; b=Qv0OhxswqpwL1wncSNNgs0hn2
	Ggs+S0L1eGWKZYvTInLOIz5bFEIjnHJfqpTo0OgCxc98FPkpNCiMZBZX6trQqLjs+LEaCjfRDvPtf
	UlUqV6lN3h0V3d6mArRtGbXLEWmvd1QtydffRw3/edp1j8NFKF1TnfmeeCoT/NgdCx95ZF6zfKj1e
	yf2JDGIhNbdqrsGDP+A6Fzq9WYYbE0qiaSThfnnFNxUrQ4u2FZFLNOUnwVAS3RiJ76K3NHQcJ0PpV
	EaOGTmD9Y8AfdLFXjkojGYkNOHl8/EJuXeMV0C0rrguKA50ftuUz63b6WzPwQXeey0/nodAC2DpmU
	g4qkNqMdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5R2-0005h0-Im; Fri, 24 May 2019 08:20:16 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5Qw-0005gh-Sg
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 08:20:12 +0000
Received: by mail-pl1-f193.google.com with SMTP id f12so3855051plt.8
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 01:20:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9k9GKesLqYE9qrMd5DIsSa+cO5k+8BSxkLIHniLlDeQ=;
 b=tloK8u7YFnFMXVubne9JuEU2ZYTm1QBMd/CfTGQTX4sloDijiCKLLLAfOx6O61mW7Z
 iWAs/zHo5OBwvZPI20vMdK9764HGX1uiHhQrbr2UgKu34TFHJ1SMW2i9exxWs6UD4Sc3
 EU4t452lboEEE+OpHrV1SgFm8DwfHgAxH9xOmPpdboFEPOwMiw//WfZ+xQViyJobOnFP
 J32nvZDUTXlWJrHXcap8RTFKJ6stSvX6HgaA/7m+rkvQ3sXWqh9IreXnuUPBiopsxY9M
 jCxmBMMnjCdCR5QS2gxITYONe9jFebMOMtuAHS0NQWH0fOjibZQRnja41fbszvYz4zNL
 zuqQ==
X-Gm-Message-State: APjAAAVy1fL871hfY6rxNz0Buvd/ZtYkXB5q750OSdMOb+PkNT6YHsZL
 qSoeyMhsxTWpRisgRXLKrok=
X-Google-Smtp-Source: APXvYqxJFxVepybTJyNZ3XMN28RZDlc8hCDTT3Vmc8DHw2P1/F2kr3ShMYXYmYNMsdCXczXbY5bKbw==
X-Received: by 2002:a17:902:bf07:: with SMTP id
 bi7mr66174093plb.248.1558686010402; 
 Fri, 24 May 2019 01:20:10 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id j8sm1717918pfi.148.2019.05.24.01.20.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:20:09 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: fix memory leak for power latency tolerance req
To: Keith Busch <kbusch@kernel.org>, David Milburn <dmilburn@redhat.com>
References: <20190517023007.140656-1-yuyufen@huawei.com>
 <0becf386-c4f5-b0f9-2d5f-84da0e58226c@redhat.com>
 <20190517183614.GB25092@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <258cd66e-9d54-6e5b-0dd5-9dbf0ba84dd8@grimberg.me>
Date: Fri, 24 May 2019 01:20:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517183614.GB25092@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_012010_925393_E5CAE6F0 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Yufen Yu <yuyufen@huawei.com>,
 "luto@kernel.org" <luto@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Thanks, applied for 5.2

This should probably be sent to stable as well...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
