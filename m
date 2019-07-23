Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E48720CC
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 22:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7TYHCHBd+pvIrdYGQNYkvl7nR1rK15jFeGHt8xWMDjw=; b=kW5dVOGnyVtbYflEtJm4EXkz9
	g7ZAjzYTrW0hyUw7TEbY3L3cazHTY1UEWaO+XorCr5agm6Qk1cBVJiOWoTNBaMiyA4IrGapRMZK2q
	lv4fsFNQJsvKLS3cZCcYtqu8y4/uLB5H1YMk5TwOkCN7fSDFfjT/E8wtWQ8byHZsNpfRZ8r9KTeRi
	PuE14mEWGIhrq+FZ17Ci/LDcpLwo9aP53nzJFyG9bdcXDJSugtx7kHpqqW7u/+N75Ttkcyusr1kPH
	cHe/B8hLoOYRDRl50gmO+p5UKgT87eGOd2luRObpVCjCOgjVP9Odw0xORKWNShGn87W4eJ2Rp84v/
	Aaq+DPCUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1QJ-0000gl-PL; Tue, 23 Jul 2019 20:30:11 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1Q5-0000g5-GI
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 20:29:58 +0000
Received: by mail-ot1-f68.google.com with SMTP id l15so45436084otn.9
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 13:29:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H5vBLulSYTeOVJqAoHXTD2L1BU9MGzk4eAxoU7D3HMA=;
 b=apISRVaMcAe/jd2aPPvIf4F+2/anO2Kg5JRZH2b20YkgynohUFBohWLi4jhaYZfr48
 LD1dXe9FXVyuwQyHJBI7ysc7Fy/jyaXxq2e1rB8wR6ADb3rsCnsOgabEvN1z9xvJLmny
 gmE6WLLJrAseu96PtD+hTfoxwE/d0EKHwrwKF7MtnSjvJ9x5oPnJOvtrKbxyJSx9lQan
 6rpAlrv31twHvb1N31vQq+f4iOZkCtdIVJGbKJvjO9IcYCjhsdqiC9aH5DIKaz8fQ1vE
 dZUVCDxv+4dyVrPGV9vafdokSsisfxZOlgDjZKEz8sCp774RFVno1cU/l+zuw8BxK5WB
 A77g==
X-Gm-Message-State: APjAAAX36Kn61dWVgTPYaikWigziyR9UYJtemw3Zd+KrJOnyFeGug9IC
 KFFfY0zqww7pmAKsndihvM4EteiI
X-Google-Smtp-Source: APXvYqxrlVCWvf3nBld0wRfatPPbjx2JtCAwSWWwXCQtCgc/r7eRnBX9lSZyR7dv+jvjH+Jfw0AjcQ==
X-Received: by 2002:a05:6830:200e:: with SMTP id
 e14mr13914865otp.245.1563913796297; 
 Tue, 23 Jul 2019 13:29:56 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id k18sm15033646oib.56.2019.07.23.13.29.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 13:29:55 -0700 (PDT)
Subject: Re: [PATCH 4/5] nvme: wait until all completed request's complete fn
 is called
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-5-ming.lei@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <95f000ba-d3c8-f215-5e32-4b6e44954fb1@grimberg.me>
Date: Tue, 23 Jul 2019 13:29:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-5-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_132957_548190_FEB2E988 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

What about fc? I know that they are not canceling a request, but
they still complete it, shouldn't it also wait before removing?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
