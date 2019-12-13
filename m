Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D38111E145
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Dec 2019 10:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmPkx3b8DFaO52tB4SPOAK1Y3flQpPHj/zAx1lOY9sU=; b=WXdiiZ5B175Ue3
	ZJaB8N9lL4Uuyp32zEbX00p4SBILZqp9OGTuTS4gzEXR9Vm+WqZ4D3Kq/6BXI6kz2gpL08rg4fygT
	gt/Mer+jp9ps1X5iQJFmy/HCvwqU0L/VsMVFYnmgnyGSrZ7w7wXG2UP5pF1hIbVGN6acGqyJtRuDE
	1xfxLWJPCN1ZI/UaGet23EVxa0qJWZ3lqjCQzVmeMSA4u247OiGrmUsnHfE9DsSD9uiEVsRGZh/t9
	e1gmzguW6phZcDosDO1Hk+EXTO3yayBX+RY/W0BRd2l+w0CPO++u6V3hrdF12DyKubC5GjcqCD4T9
	fk4aGXQMi8ZJwJUExBDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhgU-00030h-G6; Fri, 13 Dec 2019 09:56:30 +0000
Received: from paleale.coelho.fi ([176.9.41.70] helo=farmhouse.coelho.fi)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhfm-0002RY-6u
 for linux-nvme@lists.infradead.org; Fri, 13 Dec 2019 09:55:50 +0000
Received: from 91-156-6-193.elisa-laajakaista.fi ([91.156.6.193] helo=redipa)
 by farmhouse.coelho.fi with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <luca@coelho.fi>)
 id 1ifh8p-0002Lp-1I; Fri, 13 Dec 2019 11:21:43 +0200
Message-ID: <3fc87add008ee42892f747bc247f15e09f6ed2d4.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org, 
 linux-hwmon@vger.kernel.org, linux-pm@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 13 Dec 2019 11:21:40 +0200
In-Reply-To: <1576075099-3441-11-git-send-email-akinobu.mita@gmail.com>
References: <1576075099-3441-1-git-send-email-akinobu.mita@gmail.com>
 <1576075099-3441-11-git-send-email-akinobu.mita@gmail.com>
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,URIBL_BLOCKED autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH v3 10/12] wireless: iwlwifi: use <linux/units.h> helpers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_015546_302610_D3909D9A 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Johannes Berg <johannes.berg@intel.com>, Kalle Valo <kvalo@codeaurora.org>,
 Intel Linux Wireless <linuxwifi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 2019-12-11 at 23:38 +0900, Akinobu Mita wrote:
> This switches the iwlwifi driver to use celsius_to_kelvin() and
> kelvin_to_celsius() in <linux/units.h>.
> 
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Johannes Berg <johannes.berg@intel.com>
> Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Cc: Intel Linux Wireless <linuxwifi@intel.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---

Acked-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
