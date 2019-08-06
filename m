Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E192982F2F
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 12:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0UDWdSUKr00wITOlKV5+77pOfO4dKy+WhJ2meZOD7Ak=; b=RKA
	Q08f8vstZUDd+DmnVbtTmiTJHvPPt+gGZcsSPN+vhp5VPMI+Q1rHfjFTwF5yx0R5bem2kQC1cj/4P
	5DBOSf498CQwFePZuhn62Qi00SAP37wNw7Mq4S/VsCZ0o1L7WmTHMH0aP1QRJWfrb2IQXulG9vofi
	YFVaBakS2Ng4/mCd13hagz1smPUU+Oc9NWJcGZZ1Y3cUiN4MdjPfJwnm/fUJFJyOVInsRZQG0vAje
	l7lboMYlGnQC7B4X9PMAGMf1DmbUrYD54ysvGbaNLUElzhMcqcOxHQjLqEDU4TVDkByQTUbLjK1mq
	Wdt7pSb2lReay+uipf+C9xvvBI3jxXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwGp-0002Pu-VA; Tue, 06 Aug 2019 10:00:43 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwGj-0002PZ-02
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 10:00:38 +0000
Received: by mail-qk1-x72f.google.com with SMTP id m14so36663736qka.10
 for <linux-nvme@lists.infradead.org>; Tue, 06 Aug 2019 03:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=X7PXiuJCYCMWNAu4nuVBH2WFwrQF9rGdWzEVbcd2xKg=;
 b=a9J35p+KiswnYZEXHmdXYGAL24DXn3USoR06MUEbaJGck9aQ0jYV1rpG8nHuJX+fEh
 A8FavA9rVUGEQbJc+NrRI+tlsrc3d3RgpVC+O+XoSM4NpeXG6/L+Y/EmSWzI/nhdtzhy
 tb4U9T2oDYrqcgv3Myf9f1o4wx3cByWQhus1ikYecdm8MCygsFxNwziA+3kirMl16VaQ
 S6rbSP/zev0+tDymd2WOce+ZxnShtB5p8loHQpAlrw5uzAko3++fVSc6MGEDrDo0tKmp
 xOErhICaT4bUqlwuwyVPq4EEN4kPY7wkHWdui8QUO59aQy/pyVaKqpLbfjXlEEfJNnE5
 WVwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=X7PXiuJCYCMWNAu4nuVBH2WFwrQF9rGdWzEVbcd2xKg=;
 b=lBelxTfNqV/YQ5C8kUC1T1VLbDyODBBoWcH1ftNUyz/MYsnfqq6ima8StXnOLK1GkF
 3RIZwNeabFDMML3n6xYlAV6vWociOV97zhgLSS9Ia1dC6Wj61n/auxOe0HAomiG/SzSh
 2pm8EEwclQKQ75IlPzldMPd1txERaZO4n1ofCx/7Ee35J+5HAFvLBd2fgpuNoo2qpJwM
 3pwYWnmqqT6+uJASJ0QdsmjrY16IPc6E9m3+glaoYPLBgTebw98A/vDrUWeE9yuprWVz
 zu1KatRzwikkcW8NvESO8JkGZKfVVoXdmAwgudUlZsNltaKLuriYD2Rl3r5UvT11cEaB
 SyJQ==
X-Gm-Message-State: APjAAAV5+sN3bhB5zFCmld+LNL3k3NDS7JwEqSqr3Srd69EdWlDhTx10
 vpGWRXKE7jkRein9eMlSuBasrjesHpOQwwc3uTEdeKrH
X-Google-Smtp-Source: APXvYqxq3ta8hslvGoiBxs4xBqn7Sdo/ByfwIavWuuT6ZGi3AN4+Pa4LmP7upLfBmH3J7ra+aPXSjouRCidBUU+GRU4=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr2367533qki.352.1565085635481; 
 Tue, 06 Aug 2019 03:00:35 -0700 (PDT)
MIME-Version: 1.0
From: kk rao <karuna.linux@gmail.com>
Date: Tue, 6 Aug 2019 15:30:24 +0530
Message-ID: <CABECqUF5=Zd9Uu+9th4z1NNR8zvaW0T5nLM1k0JwTKU-9Dx5-w@mail.gmail.com>
Subject: nvme target fused command support
To: linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030037_073284_E6A5539C 
X-CRM114-Status: UNSURE (   3.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (karuna.linux[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

hi
is present  Linux NVMe target has fused command support?
Thanks

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
